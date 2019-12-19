namespace SymCMS.Migrations
{
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.EntityFramework;
    using SymCMS.Models;

    internal sealed class Configuration : DbMigrationsConfiguration<SymCMS.DAL.SymDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(SymCMS.DAL.SymDbContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method
            //  to avoid creating duplicate seed data.

            if (!context.Roles.Any(r => r.Name == "Administaror"))
            {
                var store = new RoleStore<IdentityRole>(context);
                var manager = new RoleManager<IdentityRole>(store);

                var role = new IdentityRole { Name = "Administrator" };
                manager.Create(role);
            }
            if (!context.Roles.Any(r => r.Name == "Editor"))
            {
                var store = new RoleStore<IdentityRole>(context);
                var manager = new RoleManager<IdentityRole>(store);

                var role = new IdentityRole { Name = "Editor" };
                manager.Create(role);
            }

            List<ApplicationUser> usersAdmin = new List<ApplicationUser>
            {
                new ApplicationUser()
                {
                    Email = "admin@sym.pl",
                    UserName = "admin"
                },
                new ApplicationUser()
                {
                    Email = "adminTest@sym.pl",
                    UserName = "adminTest"
                }
            };

            List<ApplicationUser> usersEditor = new List<ApplicationUser>
            {
                new ApplicationUser(){
                    Email = "editor@sym.pl",
                    UserName = "editor"
                }
            };

            foreach (var newUser in usersAdmin)
            {
                if (!context.Users.Any(u => u.Email == newUser.Email))
                {
                    var store = new UserStore<ApplicationUser>(context);
                    var manager = new UserManager<ApplicationUser>(store);
                    var ir = manager.Create(newUser, "@dm1n1str@t0r");
                    if (ir.Succeeded)
                    {
                        manager.AddToRole(newUser.Id, "Administrator");
                        context.Users.Find(newUser.Id).UserName = newUser.Email;
                    }
                }
            }

            foreach (var newUser in usersEditor)
            {
                if (!context.Users.Any(u => u.Email == newUser.Email))
                {
                    var store = new UserStore<ApplicationUser>(context);
                    var manager = new UserManager<ApplicationUser>(store);
                    var ir = manager.Create(newUser, "ed1t0r");
                    if (ir.Succeeded)
                    {
                        manager.AddToRole(newUser.Id, "Editor");
                        context.Users.Find(newUser.Id).UserName = newUser.Email;
                    }
                }
            }

        }
    }
}
