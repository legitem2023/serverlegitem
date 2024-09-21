import s3Client from './S3Client.js';
import { PutObjectCommand } from '@aws-sdk/client-s3';
import { createClient } from '@supabase/supabase-js';
const supabaseUrl = 'https://tsbriguuaznlvwbnylop.supabase.co';
const supabaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRzYnJpZ3V1YXpubHZ3Ym55bG9wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY5MDIzOTksImV4cCI6MjA0MjQ3ODM5OX0.oKpulUfQth5hNyZVRgw_uPBnkhrcD1LP61CPmW3U-gA";
const supabase = createClient(supabaseUrl, supabaseKey);
// export const upload = async (filename:string,stream:Stream) => {
//     const { data, error } = await supabase.storage
//     .from('legitemfiles') // Replace with your bucket name
//     .upload('ProductImages/'+filename, stream, {
//       cacheControl: '3600',
//     //   contentType: 'pn',
//       upsert: false
//     });
// }
/**
 * Upload file to Supabase storage as a buffer
 * @param fileName - The name to give the uploaded file (e.g., "Product-YYYY-MM-DD-hh-mm-ss.webp")
 * @param buffer - The file buffer created from base64 data
 * @returns {Promise<string | null>} - The public URL of the uploaded file or null if failed
 */
export const uploadFileToSupabaseS3 = async (fileName, buffer) => {
    try {
        // Upload the buffer to Supabase storage
        const { data, error } = await supabase.storage
            .from('legitemfiles') // Replace with your actual bucket name
            .upload(fileName, buffer, {
            contentType: 'image/webp',
            cacheControl: '3600',
            upsert: false // Do not overwrite existing files with the same name
        });
        if (error) {
            throw new Error(`Failed to upload image: ${error.message}`);
        }
        // Get the public URL of the uploaded file
        const { publicURL } = supabase.storage
            .from('legitemfiles')
            .getPublicUrl(fileName);
        if (!publicURL) {
            throw new Error('Failed to retrieve the public URL');
        }
        return publicURL;
    }
    catch (err) {
        console.error('Error uploading file to Supabase:', err.message);
        return null;
    }
};
export const uploadFileToAmazons3 = async (filename, stream) => {
    try {
        const pathName = `images/Legit/${filename}`;
        // streamToBuffer(stream).then(async (buffer) => {
        const params = {
            Bucket: process.env.AWS_S3_BUCKET_NAME,
            Key: pathName,
            Body: stream
        };
        const results = await s3Client.send(new PutObjectCommand(params));
        return results;
        // })
    }
    catch (error) {
        console.log("Error: ", error);
    }
};
const streamToBuffer = async (stream) => {
    return new Promise((resolve, reject) => {
        const _buf = [];
        stream.on('data', (chunk) => _buf.push(chunk));
        stream.on('end', () => resolve(Buffer.concat(_buf)));
        stream.on('error', (err) => reject(err));
    });
};
export const generateTrackingNumber = () => {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    let trackingNumber = '';
    for (let i = 0; i < 12; i++) {
        trackingNumber += "TRK-" + chars.charAt(Math.floor(Math.random() * chars.length));
    }
    return trackingNumber;
};
export const generateOrderNumber = () => {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    let trackingNumber = '';
    for (let i = 0; i < 12; i++) {
        trackingNumber += "ODR-" + chars.charAt(Math.floor(Math.random() * chars.length));
    }
    return trackingNumber;
};
