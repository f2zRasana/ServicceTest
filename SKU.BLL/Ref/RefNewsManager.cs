using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.DAL.Ref;
using SKU.Entities.Ref;

namespace SKU.BLL.Ref
{
    public class RefNewsManager
    {


        public IList<RefNews> SelectAll()
        {
            RefNewsDao refNewsDao = new RefNewsDao();
            return refNewsDao.SelectAll();
        }
    }
}
