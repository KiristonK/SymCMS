using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity.EntityFramework;
using SymCMS.Models;

namespace SymCMS.DAL
{
    public class SymDbContext : IdentityDbContext<ApplicationUser>
    {
            public SymDbContext()
                : base("DefaultConnection", throwIfV1Schema: false)
            {
            }

            public static SymDbContext Create()
            {
                return new SymDbContext();
            }

        public System.Data.Entity.DbSet<SymCMS.Models.PostModel> PostModels { get; set; }
    }
}