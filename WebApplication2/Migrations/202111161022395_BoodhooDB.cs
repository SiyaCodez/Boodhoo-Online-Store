namespace WebApplication2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class BoodhooDB : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "CFirstName", c => c.String());
            AddColumn("dbo.AspNetUsers", "CLastName", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "CLastName");
            DropColumn("dbo.AspNetUsers", "CFirstName");
        }
    }
}
