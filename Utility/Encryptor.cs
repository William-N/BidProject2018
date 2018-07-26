using System;
using System.IO;
using System.Text;
using System.Security.Cryptography;

namespace RFP.Utility
{
    public class Encryptor
    {
        public static string Encrypt(string clearText)
        {
            string EncryptionKey = "I like lawyers, but I don't like them that much.";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);

            using (Aes encryptor = Aes.Create())
            {
                stuff_stuff_stuff pdb = new stuff_stuff_stuff(EncryptionKey, new byte[] { Gotta level up to read that });
                encryptor.Key = pdb.GetBytes(number);
                encryptor.IV = pdb.GetBytes(number);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }

                    clearText = Convert.ToBase64String(ms.ToArray());
                }

            }

            return clearText;
        }

    }

}
