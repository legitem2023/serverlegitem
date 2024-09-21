import { gql } from "apollo-server-express";

export const typeDefs = gql`
scalar Upload
scalar Date
scalar Buffer
type User {
    id:String
    email:String
    accountCode:String
    accountDetails:[AccountDetails]
    password:String
    accountLevel:String
    loginAttemp:String
    macAddress:String
    agentIdentity:String
    image:String
    dateCreated:String
    dateUpdated: String
    nameOfStore: String
  }
type AccountDetails {
  id: Int
  userId: String
  fullname: String
  storeName: String
  contactNo: String
  Address: String
  accountEmail: String
  defaultAddress:Boolean
}
type CrowdMessages {
  id:String
  Messages:String
  Sender:String
  dateSent:String
}
type PersonalMessages {
  id:String
  Messages:String
  Sender:String
  Reciever:String
  dateSent:String
}

type News {
  id:String
  title:String
  thumbnail:String
  summary:String
  postedBy: String
  dateCreated:String
}

type ActiveUsers {
  fullname: String
  accountEmail: String
}


type Category{
  id:Int
  Name:String
  status:String
  icon:String
  image:String
}

type ProductTypes{
  id:Int
  Category:String
  Name:String
}

type Brands{
  id:Int
  ProductType:String
  Name:String
}


type Inventory {
  id:Int
  styleCode:String
  productType:String
  category:String
  name:String
  status:String
  dateCreated:String
  dateUpdated:String
  agentEmail:String
  brandname:String
  collectionItem:Boolean
  childInventory:[ChildInventory]
}

type ChildInventory {
  id:Int
  productCode:String
  category:String
  productType:String
  brandname:String
  imageReferences:String
  style_Code:String
  name:String
  color:String
  size:String
  price:String
  stock:String
  status:String
  thumbnail:String
  parentId:String
  creator:String
  editor:String
  dateCreated:String
  dateUpdated:String
  agentEmail:String
  subImageFieldOut:[Inv_subImage]
  model: String
  productDescription: String
}

type OrderHistory {
  id:String
  Image:String
  Size:String
  Color:String
  productCode:String
  emailAddress:String
  TrackingNo:String
  OrderNo:String
  Quantity:Int
  Price:Float
  Address:String
  Contact:String
  StoreEmail:String
  dateCreated:String
  agentEmail:String
  StatusText:String
}

type Inv_subImage {
  id:Int
  subImageRelationParent:Int
  subImageRelationChild:Int
  ImagePath:String
  isVideo:String
}

type NumberOfViews {
  id:Int
  count:String
  productCode:String
  emailAddress:String
  IpAddress:String
  Country:String
  dateVisited:String
}

type WebsiteVisits {
  id:Int
  IpAddress:String
  Country:String
  dateVisited:String
}

input InputSignup {
  accountEmail:String
}

type Result{
  statusText:String
  jsonToken:String
}

type Ipadd{
  IpAddress:String
}

input OrderHistoryInput {
  id:String
  Image:String
  Size:String
  Color:String
  productCode:String
  emailAddress:String
  TrackingNo:String
  OrderNo:String
  Quantity:Int
  Price:Float
  Address:String
  Contact:String
  agentEmail:String
}

type GroupedOrders {
  TrackingNo:String
  Address:String
  Contact:String
  StatusText:String
  OrderStatus:String
  OrderHistory:[OrderHistory]
}

input SignUpParameters {
  fullname:String
  contactNo:String
  emailAddress:String
  PassWord:String
}

input NewsInput {
  title:String
  thumbnail:String
  summary:String
  postedBy: String
}

type ActivatedUsers {
  accountEmail: String,
  fullname: String
}

type Privacy {
    id:String
    content:String
}

type Disclaimer {
  id:String
  content:String
}

type About {
  id:String
  content:String
}

type FAQ {
  id:String
  question:String
  answer:String
}


type Query {
  readPrivacy: [Privacy]
  readDisclaimer: [Disclaimer]
  readAbout: [About]
  readFAQ: [FAQ]

  readConversationist(emailAddress:String): [PersonalMessages]
  readActiveUsers(emailAddress:String): [ActivatedUsers]
  readNewsManagement(emailAddress:String): [News]
  readNews: [News]
  readNewsPoster:[News]
  readGroupedOrderHistory(emailAddress:String):[GroupedOrders]
  readGroupedOrderHistoryRecieved(emailAddress:String):[GroupedOrders]
  readGroupedOrderHistoryPacked(emailAddress:String):[GroupedOrders]
  readGroupedOrderHistoryLogistic(emailAddress:String):[GroupedOrders]
  readGroupedOrderHistoryDelivery(emailAddress:String):[GroupedOrders]
  readGroupedOrderHistoryDelivered(emailAddress:String):[GroupedOrders]

  getGroupedOrderHistory(emailAddress:String):[GroupedOrders]
  getGroupedOrderHistoryRecieved(emailAddress:String):[GroupedOrders]
  getGroupedOrderHistoryPacked(emailAddress:String):[GroupedOrders]
  getGroupedOrderHistoryLogistic(emailAddress:String):[GroupedOrders]
  getGroupedOrderHistoryDelivery(emailAddress:String):[GroupedOrders]
  getGroupedOrderHistoryDelivered(emailAddress:String):[GroupedOrders]

  getOrderHistory(emailAddress:String):[OrderHistory]
  getUser: [User]
  getFilteredUser(UserLevel:String,emailAddress:String):[User]
  getIp(ipAddress:String):[Ipadd]
  getAccountDetails: [AccountDetails]
  getAccountDetails_id(id:String):[AccountDetails]
  getParentInventory(EmailAddress:String):[Inventory]
  getChildInventory:[ChildInventory]
  getChildInventory_details(styleCode:String):[ChildInventory]
  getCategory:[Category]
  getProductTypes:[ProductTypes]
  getBrand:[Brands]
  getRelatedProduct:[ChildInventory]
  getToviewProduct(id:Int):[ChildInventory]
  getLogin(username:String,password:String):Result
  getNameofStore:[User]
  getNumberOfViews:[NumberOfViews]
  getWebsitVisits:[WebsiteVisits]
  getInv_subImage:[Inv_subImage]

  messages:[CrowdMessages]
  personalMessages(emailAddress:String):[PersonalMessages]
  readGroupSender(emailAddress:String):[PersonalMessages]
}
input OrderstatusParameter {
  TrackingNo:String
  agentEmail:String
}

input UpdatePasswordInput {
  emailAddress:String
  newPassword:String
}

input messagebody {
  fullname:String
  emailAddress:String
  contactNo:String
  details:String
}

input updateAccountDetailsInputInner {
  Address:String,
  accountEmail:String,
  contactNo:String,
  defaultAddress:String,
  fullname:String,
  storeName:String,
  userId:String,
}

input updateAccountDetailsInput {
  accountDetails: updateAccountDetailsInputInner,
  accountLevel:String,
  agentIdentity:String,
  email:String,
  loginAttemp:String,
  macAddress:String,
  nameOfStore:String
}

type Mutation {
  insertPrivacy(content:String):Result
  insertDisclaimer(content:String):Result
  insertAbout(content:String):Result
  insertFAQ(question:String,answer:String):Result

  deletePrivacy(id:String):Result
  deleteDisclaimer(id:String):Result
  deleteAbout(id:String):Result


  setActiveUsers(emailAddress:String): [ActivatedUsers]
  postPersonalMessage(Message:String,Sender:String,Reciever:String):PersonalMessages!

  updateOrderStatusRecieved(OrderstatusParameter:OrderstatusParameter):Result
  updateOrderStatusPacked(OrderstatusParameter:OrderstatusParameter):Result
  updateOrderStatusLogistic(OrderstatusParameter:OrderstatusParameter):Result
  updateOrderStatusDelivery(OrderstatusParameter:OrderstatusParameter):Result
  updateOrderStatusDelivered(OrderstatusParameter:OrderstatusParameter):Result
  updatePassword(emailAddress:String,password:String):Result
  updateChildInventory(productColor:String,
                       productSize:String,
                       productPrice:String,
                       productStatus:String,
                       productStock:String,
                       productDescription:String,
                       id:Int,
                       Email:String):Result
  updateParentInventory(productID:Int,category:String,productType:String,brandname:String,productName:String,status:String):Result

  updateAccountDetails(updateAccountDetailsInput:updateAccountDetailsInput):Result

  insertOrder(OrderHistoryInput:[OrderHistoryInput]):Result
  insertNumberOfVisit(emailAddress:String,IpAddress:String,Country:String):Result
  insertNumberOfViews(count:String,productCode:String,emailAddress:String,IpAddress:String,Country:String):Result
  insertUser(emailAddress:String,password:String,agentIdentity:String):Result
  insertInventory(emailAddress:String,
                  category:String,
                  productType:String,
                  brandname:String,
                  productName:String):Result
  insertChildInventory(emailAddress:String,
                       productStock:String,
                       productDescription:String,
                       productPrice:String,
                       productColor:String,
                       productSize:String,
                       category:String,
                       productType:String,
                       brandname:String,
                       productName:String,
                       styleCode:String):Result

  contactUs(messagebody:messagebody):Result
  createLinkToChangePassword(emailAddress:String,path:String):Result
  saveCropImage(id:Int,file:Upload):Result
  scheduleOperation(name:String):String
  postMessage(Message:String,Sender:String):CrowdMessages!
  ReadLogin(username:String,password:String):Result
  insertSignUp(SignUpParameters:[SignUpParameters]):Result
  insertNews(NewsInput:NewsInput):Result
  updateNews(NewsInput:NewsInput):Result
  deleteNews(param:String):Result
  deleteChildInventory(id:Int):Result
}
type Operation {
  name:String
  endDate:String
}

type Subscription {
  messageAdded:CrowdMessages!
  messageToOrder:[GroupedOrders]
  messageNews:[News]
  ActiveUserList:[ActiveUsers]
  messagesPersonal:PersonalMessages!
}`;