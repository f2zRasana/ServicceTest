using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SKU.Entities.Ref
{
   public class RefNews
    {
        public int RefID { get; set; }
        public string Title { get; set; }
        public DateTime PulishedDate { get; set; }
        public string Body { get; set; }
        public string NewsSource { get; set; }
        public string NewsDigest { get; set; }
        public string FilePathImage { get; set; }
    }
}

