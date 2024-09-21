import { PrismaClient } from "@prisma/client";
import bcrypt from "bcrypt";
import jwt from 'jsonwebtoken';
import https from 'https';
import { encode } from "js-base64";
import { generateTrackingNumber, generateOrderNumber, uploadFileToSupabaseS3 } from "./lib/aws.js";
import { PubSub } from "graphql-subscriptions";
import { ContactUs, createLinkURL, sendMail } from "../../utils/script.js";
const pubsub = new PubSub();
const MESSAGE_ADDED = [];
const MESSAGE_TO_ORDER = [];
const MESSAGE_NEWS = [];
const ACTIVE_USERS = [];
const MESSAGE_PERSONAL = [];
const Active = [];
const SCOPE = ['https://www.googleapis.com/auth/drive'];
const prisma = new PrismaClient();
export const resolvers = {
    Query: {
        readPrivacy: async (parent_, args_) => {
            try {
                return await prisma.privacy.findMany();
            }
            catch (error) {
                console.log(error);
            }
        },
        readDisclaimer: async (parent_, args_) => {
            try {
                return await prisma.disclaimer.findMany();
            }
            catch (error) {
                console.log(error);
            }
        },
        readAbout: async (parent_, args_) => {
            try {
                return await prisma.about.findMany();
            }
            catch (error) {
                console.log(error);
            }
        },
        readFAQ: async (parent_, args_) => {
            try {
                return await prisma.fAQ.findMany();
            }
            catch (error) {
                console.log(error);
            }
        },
        readActiveUsers: async (parent_, args, context) => {
            try {
                const { cookies } = context;
                const authToken = cookies['clientToken'];
                let Activated = [];
                let minimize = [];
                if (!authToken) {
                    throw new Error('User is not authenticated');
                }
                // Decode the URL-encoded array of tokens
                const decodedTokens = JSON.parse(decodeURIComponent(authToken));
                const jwt_token = process.env.JWT_ACCESS_TOKEN_SECRET;
                // Iterate over the array of tokens and decode each one
                for (const token of decodedTokens) {
                    const decoded = jwt.decode(token, jwt_token);
                    if (!decoded || !decoded.user) {
                        throw new Error('Invalid token');
                    }
                    // Add the active user to the list
                    Activated.push({
                        accountEmail: decoded.user.emailAddress,
                        fullname: decoded.user.emailAddress,
                    });
                }
                pubsub.publish(ACTIVE_USERS, { ActiveUserList: Activated });
                console.log(Activated);
                return Activated;
            }
            catch (error) {
                return [{
                        "accountEmail": "No Active User",
                        "fullname": "No Active User",
                    }];
            }
        },
        readNewsManagement: async (parent_, args) => {
            try {
                return await prisma.news.findMany({
                    where: {
                        postedBy: args.emailAddress
                    }
                });
            }
            catch (error) {
                console.log(error);
            }
        },
        readNews: async (parent_, args_) => {
            const messages = await prisma.news.findMany();
            pubsub.publish(MESSAGE_NEWS, { messageNews: messages });
            return messages;
        },
        readNewsPoster: async (parent_, args_) => {
            try {
                return await prisma.news.findMany({
                    distinct: ["postedBy"]
                });
            }
            catch (error) {
                console.log(error);
            }
        },
        readGroupedOrderHistory: async (parent_, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'New Order'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'New Order'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        readGroupedOrderHistoryRecieved: async (parent_, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'Recieved'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'Recieved'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        readGroupedOrderHistoryPacked: async (parent_, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'Packed'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'Packed'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        readGroupedOrderHistoryLogistic: async (parent_, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'Logistic'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'Logistic'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        readGroupedOrderHistoryDelivery: async (parent_, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'Delivery'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'Delivery'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        readGroupedOrderHistoryDelivered: async (parent_, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'Delivered'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    agentEmail: args.emailAddress,
                    OrderStatus: 'Delivered'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        getGroupedOrderHistory: async (parent_, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'New Order'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'New Order'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        getGroupedOrderHistoryRecieved: async (parent_, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'Recieved'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'Recieved'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        getGroupedOrderHistoryPacked: async (parent_, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'Packed'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'Packed'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        getGroupedOrderHistoryLogistic: async (parent_, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'Logistic'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'Logistic'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        getGroupedOrderHistoryDelivery: async (parent_, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'Delivery'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'Delivery'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        getGroupedOrderHistoryDelivered: async (_parent, args) => {
            const result = await prisma.orderHistory.findMany({
                distinct: ['TrackingNo'],
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'Delivered'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const child = await prisma.orderHistory.findMany({
                where: {
                    emailAddress: args.emailAddress,
                    OrderStatus: 'Delivered'
                },
                orderBy: {
                    dateCreated: 'desc',
                }
            });
            const result2 = result.map((item) => {
                return {
                    TrackingNo: item.TrackingNo,
                    Address: item.Address,
                    Contact: item.Contact,
                    StatusText: item.StatusText,
                    OrderStatus: item.OrderStatus,
                    OrderHistory: child.filter((childItem) => childItem.TrackingNo === item.TrackingNo),
                };
            });
            return result2;
        },
        getOrderHistory: async (_parent, args) => {
            try {
                return await prisma.orderHistory.findMany({
                    where: {
                        emailAddress: args.emailAddress
                    }
                });
            }
            catch (error) {
                console.log(error);
            }
        },
        getInv_subImage: async (_parent, args) => {
            try {
                return await prisma.inv_subImage.findMany();
            }
            catch (error) {
                console.log(error);
            }
        },
        getUser: async (_parent, args) => {
            try {
                return await prisma.user.findMany({
                    include: {
                        accountDetails: true
                    }
                });
            }
            catch (error) {
                console.log(error);
            }
        },
        getFilteredUser: async (_parent, args) => {
            try {
                let result;
                const UserLevel = args.UserLevel;
                const emailAddress = args.emailAddress;
                if (UserLevel !== "Administrator") {
                    result = await prisma.user.findMany({
                        where: {
                            agentIdentity: emailAddress
                        },
                        include: {
                            accountDetails: true
                        }
                    });
                }
                else {
                    result = await prisma.user.findMany({
                        include: {
                            accountDetails: true
                        }
                    });
                }
                return result;
            }
            catch (error) {
                console.log(error);
            }
        },
        getAccountDetails: async (parent, args) => {
            try {
                const data = await prisma.accountDetails.findMany();
                return data;
            }
            catch (error) {
                console.log(error);
            }
        },
        getAccountDetails_id: async (parent, args) => {
            try {
                const data = await prisma.accountDetails.findMany({
                    where: {
                        userId: args.id
                    }
                });
                return data;
            }
            catch (error) {
                console.log(error);
            }
        },
        getParentInventory: async (parent, args) => {
            try {
                const data = await prisma.inventory.findMany({
                    where: {
                        agentEmail: args.EmailAddress
                    },
                    include: {
                        childInventory: true
                    },
                    orderBy: {
                        dateCreated: 'desc'
                    }
                });
                return data;
            }
            catch (error) {
                console.log(error);
            }
        },
        getChildInventory: async (_parents, args) => {
            try {
                const skip = args.skip;
                const take = args.take;
                const data = await prisma.childInventory.findMany({
                    where: {
                        status: "Active"
                    }
                });
                return data;
            }
            catch (error) {
                console.log(error);
            }
        },
        getChildInventory_details: async (parents, args) => {
            try {
                const data = await prisma.childInventory.findMany({
                    where: {
                        style_Code: args.styleCode
                    }
                });
                return data;
            }
            catch (error) {
                console.log(error);
            }
        },
        getCategory: async (parents, args) => {
            try {
                const data = await prisma.category.findMany();
                return data;
            }
            catch (error) {
                console.log(error);
            }
        },
        getProductTypes: async (parents, args) => {
            return await prisma.productTypes.findMany();
        },
        getBrand: async (parents, args) => {
            return await prisma.brandname.findMany();
        },
        getRelatedProduct: async (parents, args) => {
            try {
                const skip = args.skip;
                const take = args.take;
                const data = await prisma.childInventory.findMany();
                return data;
            }
            catch (error) {
                console.log(error);
            }
        },
        getToviewProduct: async (parents, args) => {
            try {
                const id = args.id;
                const data = await prisma.childInventory.findMany({
                    take: 1,
                    where: {
                        id: parseInt(id)
                    }
                });
                return data;
            }
            catch (error) {
                console.log(error);
            }
        },
        getLogin: async (parent, args) => {
            try {
                const unique = await prisma.user.findUnique({
                    where: {
                        email: args.username,
                    }
                });
                if (unique) {
                    let encrypedpassword = unique.password;
                    const decrypt = await bcrypt.compare(args.password, encrypedpassword);
                    if (decrypt == true) {
                        const response_data = await prisma.user.findMany({
                            where: {
                                email: args.username,
                                password: encrypedpassword
                            }
                        });
                        const user = {
                            id: response_data[0].id,
                            userLevel: response_data[0].accountLevel,
                            iconSrc: response_data[0].image,
                            emailAddress: response_data[0].email,
                            isLoginUsingAdmin: true
                        };
                        const jwt_token = process.env.JWT_ACCESS_TOKEN_SECRET;
                        const token = jwt.sign({ user: user, }, jwt_token, { expiresIn: '24h' });
                        return {
                            jsonToken: token,
                            statusText: `Welcome!`
                        };
                    }
                    else {
                        return {
                            jsonToken: "token",
                            statusText: `Login Failed!`
                        };
                    }
                }
            }
            catch (error) {
                console.log(error);
            }
        },
        getNameofStore: async (parent, args) => {
            try {
                return await prisma.user.findMany({
                    where: {
                        accountLevel: "Merchant"
                    },
                    include: {
                        accountDetails: true
                    }
                });
            }
            catch (error) {
                console.log(error);
            }
        },
        getNumberOfViews: async (parent, args) => {
            return await prisma.numberOfViews.findMany();
        },
        getWebsitVisits: async (parent, args) => {
            return await prisma.websiteVisits.findMany();
        },
        getIp: async (parent, args) => {
            const ipadd = args.ipAddress;
            const ipData = await new Promise((resolve, reject) => {
                const url = `https://api.ip2location.io/?key=11AD281BE74BE72DABDFCBC298BBF47C&ip=${ipadd}&format=json`;
                let response = "";
                const req = https.get(url, (res) => {
                    res.on("data", (chunk) => (response = response + chunk));
                    res.on("end", () => {
                        resolve(response);
                    });
                });
                req.on("error", (err) => {
                    reject(err);
                });
            });
            return await ipData;
        },
        messages: async (parent, args) => {
            try {
                const messages = await prisma.crowdMessages.findMany({
                    orderBy: {
                        dateSent: 'desc'
                    }
                });
                pubsub.publish(MESSAGE_ADDED, { messageAdded: messages });
                return messages;
            }
            catch (error) {
            }
        },
        personalMessages: async (parent, args) => {
            try {
                const messages = await prisma.personalMessages.findMany({
                    where: {
                        OR: [
                            { Reciever: args.emailAddress },
                            { Sender: args.emailAddress }
                        ]
                    },
                    orderBy: {
                        dateSent: 'desc'
                    }
                });
                pubsub.publish(MESSAGE_PERSONAL, { messagesPersonal: messages });
                return messages;
            }
            catch (error) {
            }
        },
        readGroupSender: async (parent, args) => {
            try {
                const messages = await prisma.personalMessages.findMany({
                    where: {
                        Sender: args.emailAddress
                    },
                    distinct: ["Reciever"],
                    orderBy: {
                        dateSent: 'desc'
                    }
                });
                pubsub.publish(MESSAGE_PERSONAL, { messagesPersonal: messages });
                return messages;
            }
            catch (error) {
            }
        }
    },
    Mutation: {
        insertPrivacy: async (_parent, args) => {
            try {
                const content = args.content;
                const newPrivacy = await prisma.privacy.create({
                    data: {
                        content: content
                    }
                });
                if (newPrivacy) {
                    return {
                        "statusText": "Privacy Policy Added Successfully"
                    };
                }
            }
            catch (error) {
                console.log(error);
            }
        },
        insertDisclaimer: async (_parent, args) => {
            try {
                const content = args.content;
                const newdisclaimer = await prisma.disclaimer.create({
                    data: {
                        content: content
                    }
                });
                if (newdisclaimer) {
                    return {
                        "statusText": "Disclaimer Added Successfully"
                    };
                }
            }
            catch (error) {
                console.log(error);
            }
        },
        insertAbout: async (_parent, args) => {
            try {
                const content = args.content;
                const newinsertAbout = await prisma.about.create({
                    data: {
                        content: content
                    }
                });
                if (newinsertAbout) {
                    return {
                        "statusText": "About Added Successfully"
                    };
                }
            }
            catch (error) {
                console.log(error);
            }
        },
        deletePrivacy: async (_parent, args) => {
            try {
                const id = args.id;
                const newPrivacy = await prisma.privacy.delete({
                    where: {
                        id: id
                    }
                });
                if (newPrivacy) {
                    return {
                        "statusText": "Privacy Policy Deleted Successfully"
                    };
                }
            }
            catch (error) {
                console.log(error);
            }
        },
        deleteDisclaimer: async (_parent, args) => {
            try {
                const id = args.id;
                const newdisclaimer = await prisma.disclaimer.delete({
                    where: {
                        id: id
                    }
                });
                if (newdisclaimer) {
                    return {
                        "statusText": "Disclaimer Deleted Successfully"
                    };
                }
            }
            catch (error) {
                console.log(error);
            }
        },
        deleteAbout: async (_parent, args) => {
            try {
                const id = args.id;
                const newAbout = await prisma.about.delete({
                    where: {
                        id: id
                    }
                });
                if (newAbout) {
                    return {
                        "statusText": "About Deleted Successfully"
                    };
                }
            }
            catch (error) {
                console.log(error);
            }
        },
        setActiveUsers: async (_parent, args) => {
            try {
                let result = await prisma.user.findUnique({
                    where: {
                        email: args.emailAddress,
                    }
                });
                const result2 = await prisma.accountDetails.findMany({
                    where: {
                        accountEmail: result.email,
                        defaultAddress: true
                    }
                });
                const data = {
                    "accountEmail": result.email,
                    "fullname": result2[0].fullname
                };
                Active.push(data);
                pubsub.publish(ACTIVE_USERS, { ActiveUserList: Active });
                return Active;
            }
            catch (error) {
            }
        },
        updateAccountDetails: async (_parent, args) => {
            try {
                let result = 'Success';
                const { updateAccountDetailsInput } = args;
                const filtered = await prisma.accountDetails.findMany({
                    where: {
                        accountEmail: updateAccountDetailsInput.email,
                        defaultAddress: true
                    }
                });
                if (filtered.length == 0) {
                    result = 'Default Address Not Found';
                }
                else {
                    await prisma.user.update({
                        where: {
                            email: updateAccountDetailsInput.email
                        },
                        data: {
                            accountLevel: updateAccountDetailsInput.accountLevel,
                            agentIdentity: updateAccountDetailsInput.agentIdentity,
                            email: updateAccountDetailsInput.email,
                            loginAttemp: updateAccountDetailsInput.loginAttemp,
                            macAddress: updateAccountDetailsInput.macAddress,
                            nameOfStore: updateAccountDetailsInput.nameOfStore
                        }
                    });
                    await prisma.accountDetails.updateMany({
                        where: {
                            accountEmail: updateAccountDetailsInput.email,
                            defaultAddress: true
                        },
                        data: {
                            fullname: updateAccountDetailsInput.accountDetails.fullname,
                            storeName: updateAccountDetailsInput.accountDetails.storeName,
                            contactNo: updateAccountDetailsInput.accountDetails.contactNo,
                            Address: updateAccountDetailsInput.accountDetails.Address
                        }
                    });
                }
                return {
                    "statusText": result
                };
            }
            catch (error) {
            }
        },
        updateOrderStatusRecieved: async (_parent, args) => {
            try {
                const { OrderstatusParameter } = args;
                const { TrackingNo, agentEmail } = OrderstatusParameter;
                const result = await prisma.orderHistory.updateMany({
                    where: {
                        TrackingNo: TrackingNo,
                        agentEmail: agentEmail
                    },
                    data: {
                        OrderStatus: 'Recieved',
                        StatusText: 'Your order has received and on process'
                    }
                });
                const OrderMessage = await prisma.orderHistory.findMany({
                    where: {
                        TrackingNo: TrackingNo
                    }
                });
                pubsub.publish(MESSAGE_TO_ORDER, { messageToOrder: OrderMessage });
                if (result) {
                    return {
                        'statusText': 'Successful!'
                    };
                }
            }
            catch (error) {
            }
        },
        updateOrderStatusPacked: async (_parent, args) => {
            try {
                const { OrderstatusParameter } = args;
                const { TrackingNo, agentEmail } = OrderstatusParameter;
                const result = await prisma.orderHistory.updateMany({
                    where: {
                        TrackingNo: TrackingNo,
                        agentEmail: agentEmail
                    },
                    data: {
                        OrderStatus: 'Packed',
                        StatusText: 'Your order is Packed!'
                    }
                });
                const OrderMessage = await prisma.orderHistory.findMany({
                    where: {
                        TrackingNo: TrackingNo
                    }
                });
                pubsub.publish(MESSAGE_TO_ORDER, { messageToOrder: OrderMessage });
                if (result) {
                    return {
                        'statusText': 'Successful!'
                    };
                }
            }
            catch (error) {
            }
        },
        updateOrderStatusLogistic: async (_parent, args) => {
            try {
                const { OrderstatusParameter } = args;
                const { TrackingNo, agentEmail } = OrderstatusParameter;
                const result = await prisma.orderHistory.updateMany({
                    where: {
                        TrackingNo: TrackingNo,
                        agentEmail: agentEmail
                    },
                    data: {
                        OrderStatus: 'Logistic',
                        StatusText: 'Your order has brought on logistic partner'
                    }
                });
                const OrderMessage = await prisma.orderHistory.findMany({
                    where: {
                        TrackingNo: TrackingNo
                    }
                });
                pubsub.publish(MESSAGE_TO_ORDER, { messageToOrder: OrderMessage });
                if (result) {
                    return {
                        'statusText': 'Successful!'
                    };
                }
            }
            catch (error) {
            }
        },
        updateOrderStatusDelivery: async (_parent, args) => {
            try {
                const { OrderstatusParameter } = args;
                const { TrackingNo, agentEmail } = OrderstatusParameter;
                const result = await prisma.orderHistory.updateMany({
                    where: {
                        TrackingNo: TrackingNo,
                        agentEmail: agentEmail
                    },
                    data: {
                        OrderStatus: 'Delivery',
                        StatusText: 'Your order is out for delivery'
                    }
                });
                const OrderMessage = await prisma.orderHistory.findMany({
                    where: {
                        TrackingNo: TrackingNo
                    }
                });
                pubsub.publish(MESSAGE_TO_ORDER, { messageToOrder: OrderMessage });
                if (result) {
                    return {
                        'statusText': 'Successful!'
                    };
                }
            }
            catch (error) {
            }
        },
        updateOrderStatusDelivered: async (_parent, args) => {
            try {
                const { OrderstatusParameter } = args;
                const { TrackingNo, agentEmail } = OrderstatusParameter;
                const result = await prisma.orderHistory.updateMany({
                    where: {
                        TrackingNo: TrackingNo,
                        agentEmail: agentEmail
                    },
                    data: {
                        OrderStatus: 'Delivered',
                        StatusText: 'Your Order Successfully Delivered'
                    }
                });
                const OrderMessage = await prisma.orderHistory.findMany({
                    where: {
                        TrackingNo: TrackingNo
                    }
                });
                pubsub.publish(MESSAGE_TO_ORDER, { messageToOrder: OrderMessage });
                if (result) {
                    return {
                        'statusText': 'Successful!'
                    };
                }
            }
            catch (error) {
            }
        },
        insertOrder: async (_parent, args) => {
            const parameters = args.OrderHistoryInput;
            const tracking = generateTrackingNumber();
            const orderno = generateOrderNumber();
            // Ensure all the promises are resolved before returning the result
            const result = await Promise.all(parameters.map(async (item) => {
                return await prisma.orderHistory.create({
                    data: {
                        productCode: item.productCode,
                        Image: item.Image,
                        Size: item.Size,
                        Color: item.Color,
                        emailAddress: item.emailAddress,
                        TrackingNo: tracking,
                        OrderNo: orderno,
                        Quantity: item.Quantity,
                        Price: item.Price,
                        Address: item.Address,
                        Contact: item.Contact,
                        agentEmail: item.agentEmail
                    },
                });
            }));
            const OrderMessage = await prisma.orderHistory.findMany({
                where: {
                    TrackingNo: tracking
                }
            });
            pubsub.publish(MESSAGE_TO_ORDER, { messageToOrder: OrderMessage });
            if (result.length > 0) {
                return {
                    statusText: "Success",
                };
            }
        },
        insertNumberOfVisit: async (_parent, args) => {
            const date_today = new Date();
            const yy = date_today.getFullYear();
            const mm = date_today.getMonth() + 1;
            const dd = date_today.getDay();
            const dateData = `${yy}/${mm}/${dd}`;
            const data = await prisma.websiteVisits.findMany({
                where: {
                    IpAddress: args.IpAddress,
                    dateVisited: dateData
                }
            });
            if (data.length < 1) {
                await prisma.websiteVisits.create({
                    data: {
                        IpAddress: args.IpAddress,
                        Country: args.Country,
                        dateVisited: dateData
                    }
                });
            }
        },
        insertNumberOfViews: async (_parent, args) => {
            try {
                const date_today = new Date();
                const yy = date_today.getFullYear();
                const mm = date_today.getMonth() + 1;
                const dd = date_today.getDay();
                const dateData = `${yy}/${mm}/${dd}`;
                const data = await prisma.numberOfViews.findMany({
                    where: {
                        productCode: args.productCode,
                        dateVisited: dateData
                    }
                });
                if (data.length < 1) {
                    await prisma.numberOfViews.create({
                        data: {
                            count: args.count,
                            productCode: args.productCode,
                            emailAddress: args.emailAddress,
                            IpAddress: args.IpAddress,
                            Country: args.Country,
                            dateVisited: dateData
                        }
                    });
                }
            }
            catch (error) {
            }
        },
        insertUser: async (_parent, args) => {
            try {
                //*****************************************************//
                var date = new Date();
                var YYYY = date.getFullYear();
                var MMMM = date.getMonth();
                var DDDD = date.getDay();
                var hh = date.getHours();
                var mm = date.getMinutes();
                var ss = date.getSeconds();
                var emailAddress = args.emailAddress;
                var passWord = args.password;
                let agentIdentity = args.agentIdentity;
                const account_acct_code = "Acct" + "-" + YYYY + "-" + MMMM + "-" + DDDD + "-" + hh + "-" + mm + "-" + ss;
                const salt = bcrypt.genSaltSync(10);
                const hash = bcrypt.hashSync(passWord, salt);
                const d = new Date();
                var init = 'AC';
                var mm = d.getMinutes();
                var ss = d.getSeconds();
                //*****************************************************//
                const filter = await prisma.user.findMany({
                    where: {
                        email: emailAddress
                    }
                });
                console.log(emailAddress, passWord, agentIdentity);
                if (filter.length > 0) {
                    return {
                        statusText: "This Email is already taken"
                    };
                }
                else {
                    await prisma.user.create({
                        data: {
                            email: emailAddress,
                            accountCode: account_acct_code,
                            password: hash,
                            accountLevel: "Encoder",
                            agentIdentity: agentIdentity,
                            accountDetails: {
                                create: {
                                    accountEmail: emailAddress,
                                    defaultAddress: true
                                }
                            }
                        }
                    });
                    return {
                        statusText: "Successfully"
                    };
                }
            }
            catch (error) {
                console.log(error);
            }
        },
        insertInventory: async (_parent, args) => {
            var date = new Date();
            var YYYY = date.getFullYear();
            var MMMM = date.getMonth();
            var DDDD = date.getDay();
            var hh = date.getHours();
            var mm = date.getMinutes();
            var ss = date.getSeconds();
            var emailAddress = args.emailAddress;
            console.log(args);
            const stl = "Style_" + YYYY + "-" + MMMM + "-" + DDDD + "-" + hh + "-" + mm + "-" + ss;
            const prcode = "PrCode_" + YYYY + MMMM + DDDD + hh + mm + ss;
            await prisma.inventory.create({
                data: {
                    styleCode: stl,
                    productType: args.productType,
                    category: args.category,
                    name: args.productName,
                    status: "Active",
                    agentEmail: args.emailAddress,
                    brandname: args.brandname,
                    collectionItem: false
                }
            });
            await prisma.childInventory.create({
                data: {
                    style_Code: stl,
                    productCode: prcode,
                    productType: args.productType,
                    brandname: args.brandname,
                    category: args.category,
                    price: 0,
                    stock: 0,
                    status: "Active",
                    creator: emailAddress,
                    editor: emailAddress,
                    agentEmail: emailAddress,
                    name: args.productName
                }
            });
            console.log(args);
            return {
                statusText: "Successfully!"
            };
        },
        insertChildInventory: async (_parent, args) => {
            var date = new Date();
            var YYYY = date.getFullYear();
            var MMMM = date.getMonth();
            var DDDD = date.getDay();
            var hh = date.getHours();
            var mm = date.getMinutes();
            var ss = date.getSeconds();
            var emailAddress = args.emailAddress;
            var styleCode = args.styleCode;
            const prcode = "PrCode_" + YYYY + MMMM + DDDD + hh + mm + ss;
            const data = await prisma.childInventory.create({
                data: {
                    agentEmail: emailAddress,
                    stock: parseFloat(args.productStock),
                    price: parseFloat(args.productPrice),
                    color: args.productColor,
                    size: args.productSize,
                    category: args.category,
                    productType: args.productType,
                    brandname: args.brandname,
                    name: args.productName,
                    productDescription: args.productDescription,
                    style_Code: styleCode,
                    productCode: prcode,
                    status: "Active",
                    creator: emailAddress,
                    editor: emailAddress,
                }
            });
            if (data) {
                return {
                    "statusText": "Successfully Inserted!"
                };
            }
        },
        createLinkToChangePassword: async (_parent, args) => {
            try {
                let result = 'Success';
                const { path, emailAddress } = args;
                const userData = await prisma.user.findMany({
                    where: {
                        email: emailAddress
                    }
                });
                const EmailAddress = emailAddress;
                console.log(EmailAddress);
                const link = `${path}ForgotPassword/?id=${encode(EmailAddress)}`;
                console.log(link);
                if (userData.length > 0) {
                    result = "Check your Email";
                }
                else {
                    result = "Email Address Does Not Exist";
                }
                await createLinkURL(emailAddress, link);
                return {
                    statusText: result,
                };
            }
            catch (error) {
                console.error('Error creating password reset link:', error);
                return {
                    status: 'error',
                    statusText: 'An error occurred while processing your request.',
                };
            }
        },
        contactUs: async (_parent, args) => {
            const result = await ContactUs(args.messagebody);
            return {
                "statusText": "Successfully"
            };
        },
        updatePassword: async (_parent, args) => {
            try {
                const password = args.password;
                const emailAddress = args.emailAddress;
                const salt = bcrypt.genSaltSync(10);
                const hash = bcrypt.hashSync(password, salt);
                const update = await prisma.user.update({
                    where: {
                        email: emailAddress
                    },
                    data: {
                        password: hash
                    }
                });
                console.log(update);
                return {
                    "statusText": "Successfully"
                };
            }
            catch (error) {
            }
        },
        updateParentInventory: async (_parent, args) => {
            var date = new Date();
            const result = await prisma.inventory.update({
                where: {
                    id: args.productID
                },
                data: {
                    productType: args.productType,
                    category: args.category,
                    name: args.productName,
                    status: args.status,
                    dateUpdated: date,
                    brandname: args.brandname
                }
            });
            await prisma.childInventory.updateMany({
                where: {
                    style_Code: result.styleCode
                },
                data: {
                    name: args.productName,
                    productType: args.productType,
                    brandname: args.brandname
                }
            });
            console.log(result.styleCode);
            return {
                "statusText": "Success!"
            };
        },
        updateChildInventory: async (_parent, args) => {
            var date = new Date();
            await prisma.childInventory.update({
                where: {
                    id: args.id
                },
                data: {
                    color: args.productColor,
                    size: args.productSize,
                    price: parseFloat(args.productPrice),
                    stock: parseInt(args.productStock),
                    productDescription: args.productDescription,
                    status: args.productStatus,
                    editor: args.Email,
                    dateUpdated: date
                }
            });
            console.log(args);
            return {
                "statusText": "Successfuly Save!",
                "jsonToken": "String"
            };
        },
        saveCropImage: async (_parent, args) => {
            const id = parseInt(args.id);
            const file = args.file;
            const base64Data = file.replace(/^data:image\/\w+;base64,/, '');
            // Create a buffer from the base64 data
            const buffer = Buffer.from(base64Data, 'base64');
            const date = new Date();
            const YYYY = date.getFullYear();
            const MM = date.getMonth();
            const DD = date.getDay();
            const hh = date.getHours();
            const mm = date.getMinutes();
            const ss = date.getSeconds();
            const newName = `Product-${YYYY + "-" + MM + "-" + DD + "-" + hh + "-" + mm + -"" + ss + ".webp"}`;
            const uploadRes = await uploadFileToSupabaseS3(newName, buffer);
            await prisma.childInventory.update({
                where: {
                    id: id
                },
                data: {
                    thumbnail: newName
                }
            });
            const result = await prisma.inv_subImage.create({
                data: {
                    ImagePath: newName,
                    subImageRelationChild: id
                }
            });
            console.log('Image saved successfully:', newName);
        },
        postMessage: async (_parent, args) => {
            try {
                const newMessage = await prisma.crowdMessages.create({
                    data: {
                        Messages: args.Message,
                        Sender: args.Sender
                    }
                });
                pubsub.publish(MESSAGE_ADDED, { messageAdded: newMessage });
                return newMessage;
            }
            catch (error) {
                console.error("Error creating message:", error);
            }
        },
        postPersonalMessage: async (_parent, args) => {
            try {
                const newMessage = await prisma.personalMessages.create({
                    data: {
                        Messages: args.Message,
                        Sender: args.Sender,
                        Reciever: args.Reciever
                    }
                });
                console.log(newMessage);
                pubsub.publish(MESSAGE_PERSONAL, { messagesPersonal: newMessage });
                return newMessage;
            }
            catch (error) {
                console.error("Error creating message:", error);
            }
        },
        ReadLogin: async (_parent, args) => {
            try {
                const unique = await prisma.user.findUnique({
                    where: {
                        email: args.username,
                    }
                });
                if (unique) {
                    let encrypedpassword = unique.password;
                    const decrypt = await bcrypt.compare(args.password, encrypedpassword);
                    if (decrypt == true) {
                        const response_data = await prisma.user.findMany({
                            where: {
                                email: args.username,
                                password: encrypedpassword
                            }
                        });
                        const user = {
                            id: response_data[0].id,
                            userLevel: response_data[0].accountLevel,
                            iconSrc: response_data[0].image,
                            emailAddress: response_data[0].email,
                            isLoginUsingAdmin: true
                        };
                        const jwt_token = process.env.JWT_ACCESS_TOKEN_SECRET;
                        const token = jwt.sign({ user: user, }, jwt_token, { expiresIn: '24h' });
                        return {
                            jsonToken: token,
                            statusText: `Welcome!`
                        };
                    }
                    else {
                        return {
                            jsonToken: "token",
                            statusText: `Login Failed!`
                        };
                    }
                }
            }
            catch (error) {
                console.log(error);
            }
        },
        insertSignUp: async (_parent, args) => {
            try {
                const date = new Date();
                const YYYY = date.getFullYear();
                const MMMM = date.getMonth() + 1; // Month is zero-based, so add 1
                const DDDD = date.getDate(); // Use `getDate` instead of `getDay` to get the day of the month
                const hh = date.getHours();
                const mm = date.getMinutes();
                const ss = date.getSeconds();
                const generatePassword = (password) => {
                    const salt = bcrypt.genSaltSync(10);
                    const hash = bcrypt.hashSync(password, salt);
                    return hash;
                };
                const accountCode = `Acct-${YYYY}-${MMMM}-${DDDD}-${hh}-${mm}-${ss}`;
                const signUpParameters = (args === null || args === void 0 ? void 0 : args.SignUpParameters) || [];
                let result = "Successfully Saved!";
                for (const item of signUpParameters) {
                    const checkExistence = await prisma.user.findMany({
                        where: {
                            email: item.emailAddress,
                        },
                    });
                    if (checkExistence.length > 0) {
                        result = "Email already exists";
                    }
                    else {
                        await sendMail(item.emailAddress, item.fullname);
                        await prisma.user.create({
                            data: {
                                email: item.emailAddress,
                                password: generatePassword(item.PassWord),
                                accountCode: accountCode,
                                accountLevel: 'User',
                                accountDetails: {
                                    create: {
                                        fullname: item.fullname,
                                        accountEmail: item.emailAddress,
                                        contactNo: item.contactNo,
                                        defaultAddress: true
                                    },
                                },
                            },
                        });
                        result = "Successfully Saved!";
                    }
                }
                return {
                    statusText: result,
                };
            }
            catch (error) {
                console.error("Error during sign-up:", error);
                return {
                    statusText: "Error during sign-up.",
                };
            }
        },
        insertNews: async (_parent, args) => {
            const { NewsInput } = args;
            const newNews = await prisma.news.create({
                data: {
                    title: NewsInput.title,
                    thumbnail: NewsInput.thumbnail,
                    summary: NewsInput.summary,
                    postedBy: NewsInput.postedBy
                }
            });
            const messages = await prisma.news.findMany();
            pubsub.publish(MESSAGE_NEWS, { messageNews: [newNews] });
            return {
                "statusText": "Successfull!"
            };
        },
        deleteChildInventory: async (_parent, args) => {
            try {
                const deleteItem = await prisma.childInventory.delete({
                    where: {
                        id: args.id
                    }
                });
                if (deleteItem) {
                    return {
                        "statusText": "Successfull deleted!"
                    };
                }
            }
            catch (error) {
                console.error("Error deleting item:", error);
            }
        },
        updateNews: async (_parent, args) => {
            try {
                const { title, thumbnail, summary, postedBy } = args.NewsInput;
                await prisma.news.update({
                    where: {
                        id: args.param
                    },
                    data: {
                        title: title,
                        thumbnail: thumbnail,
                        summary: summary,
                        postedBy: postedBy
                    }
                });
                return {
                    "statusText": "Successfully Updated!"
                };
            }
            catch (error) {
                console.log(error);
            }
        },
        deleteNews: async (_parent, args) => {
            try {
                const { param } = args;
                const result = await prisma.news.delete({
                    where: {
                        id: param
                    }
                });
                if (result) {
                    return {
                        "statusText": "Successfully deleted!"
                    };
                }
            }
            catch (error) {
                console.log(error);
            }
        }
    },
    Subscription: {
        messageAdded: {
            subscribe: () => pubsub.asyncIterator([MESSAGE_ADDED]),
        },
        messageToOrder: {
            subscribe: () => pubsub.asyncIterator([MESSAGE_TO_ORDER])
        },
        messageNews: {
            subscribe: () => pubsub.asyncIterator([MESSAGE_NEWS])
        },
        ActiveUserList: {
            subscribe: () => pubsub.asyncIterator([ACTIVE_USERS])
        },
        messagesPersonal: {
            subscribe: () => pubsub.asyncIterator([MESSAGE_PERSONAL]),
        }
    },
};
