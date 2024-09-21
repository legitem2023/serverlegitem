import nodemailer from 'nodemailer';
const transporter = nodemailer.createTransport({
    service: 'yahoo',
    auth: {
        user: process.env.YAHOO_EMAIL_USER,
        pass: process.env.YAHOO_EMAIL_PASS, // Yahoo app password from .env.local
    },
});
export const sendMail = async (email, fullname) => {
    const mailOptions = {
        from: process.env.YAHOO_EMAIL_USER,
        to: email,
        subject: 'From Legitem SignUp',
        text: `Hello ${fullname}, thank you for joining us! You can now log in, check out your purchases, and enjoy shopping.`,
    };
    const data = await transporter.sendMail(mailOptions);
    return data;
};
export const createLinkURL = async (email, url) => {
    const mailOptions = {
        from: process.env.YAHOO_EMAIL_USER,
        to: email,
        subject: 'From Legitem Forgot Password',
        text: `Click the link to Change Password\n`,
        html: `<a href=${url}>Visit Link</a>`
    };
    const data = await transporter.sendMail(mailOptions);
    return data;
};
export const ContactUs = async (body) => {
    const { emailAddress, fullname, contactNo, details } = body;
    const mailOptions = {
        from: process.env.YAHOO_EMAIL_USER,
        to: process.env.YAHOO_EMAIL_USER,
        subject: 'From Legitem Contact Us',
        text: `Fullname: ${fullname}\nEmail: ${body.emailAddress}\nContact No.: ${contactNo}\nDetails: ${details}`,
        html: `
      <h1>From Legitem Contact Us</h1>
      <img height="100px" width="100px" src='https://hokei-storage.s3.ap-northeast-1.amazonaws.com/images/Legit/IconImages/Legitem-svg.svg'/>
      <p>Fullname: ${fullname}</p>
      <p>Email: ${emailAddress}</p>
      <p>Contact No.: ${contactNo}</p>
      <p>Details: ${details}</p>
    `,
    };
    const data = await transporter.sendMail(mailOptions);
    return data;
};
