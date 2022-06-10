using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace projetoCrud.Migrations
{
    public partial class firstMigrations : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "aluno",
                columns: table => new
                {
                    id = table.Column<int>(type: "INTEGER", nullable: false)
                        .Annotation("Sqlite:Autoincrement", true),
                    matricula = table.Column<int>(type: "NVARCHAR", maxLength: 80, nullable: false),
                    nome = table.Column<string>(type: "NVARCHAR", maxLength: 80, nullable: false),
                    dataNascimento = table.Column<DateTime>(type: "SMALLDATETIME", nullable: false),
                    telefone = table.Column<string>(type: "VARCHAR", maxLength: 20, nullable: false),
                    email = table.Column<string>(type: "NVARCHAR", maxLength: 80, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_aluno", x => x.id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "aluno");
        }
    }
}
