using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.DAL.Ref;
using SKU.Entities;

namespace SKU.BLL.Ref
{
    public class RefPartsManager
    {
        public List<Parts> SelectAll()
        {
            RefPartsDao refPartsDao= new RefPartsDao();
            return refPartsDao.SelectAll();
        }
    }
}
