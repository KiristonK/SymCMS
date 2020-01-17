using System.Data.Entity;
using Microsoft.AspNet.Identity.EntityFramework;
using SymCMS.Models;

namespace SymCMS.DAL
{
    public class SymDbContext : IdentityDbContext<ApplicationUser>
    {
        public SymDbContext()
            : base("DefaultConnection", false)
        {
        }

        public DbSet<CommentModel> CommentModels { get; set; }

        public DbSet<PostModel> PostModels { get; set; }

        public DbSet<PostCategory> PostCategories { get; set; }

        public DbSet<PageModels> PageModels { get; set; }

        public static SymDbContext Create()
        {
            return new SymDbContext();
        }
    }
}