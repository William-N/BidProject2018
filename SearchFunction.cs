using System.Collections;

namespace RFP.Utility
{
    public class SearchFunction
    {
        public static ArrayList Search(string search, ArrayList questions)
        {
            string[] terms = search.Split(' ');
            ArrayList results = new ArrayList();

            foreach (string question in questions)
            {
                bool allMatch = true;

                for (int j = 0; j < terms.Length; j++)
                {
                    if (!question.ToLower().Contains(terms[j].ToLower()))
                    {
                        allMatch = false;
                        break;

                    }

                }

                if (allMatch)
                {
                    results.Add(question);
                }

            }

            return results;
        }

    }

}
