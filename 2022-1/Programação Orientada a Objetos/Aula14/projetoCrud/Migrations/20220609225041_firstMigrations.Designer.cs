﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using projetoCrud.Models.Repositories;

#nullable disable

namespace projetoCrud.Migrations
{
    [DbContext(typeof(DataContext))]
    [Migration("20220609225041_firstMigrations")]
    partial class firstMigrations
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder.HasAnnotation("ProductVersion", "6.0.5");

            modelBuilder.Entity("projetoCrud.Models.Domains.Aluno", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("INTEGER")
                        .HasColumnName("id");

                    b.Property<DateTime>("DataNascimento")
                        .HasColumnType("SMALLDATETIME")
                        .HasColumnName("dataNascimento");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasMaxLength(80)
                        .HasColumnType("NVARCHAR")
                        .HasColumnName("email");

                    b.Property<int>("Matricula")
                        .HasMaxLength(80)
                        .HasColumnType("NVARCHAR")
                        .HasColumnName("matricula");

                    b.Property<string>("Nome")
                        .IsRequired()
                        .HasMaxLength(80)
                        .HasColumnType("NVARCHAR")
                        .HasColumnName("nome");

                    b.Property<string>("Telefone")
                        .IsRequired()
                        .HasMaxLength(20)
                        .HasColumnType("VARCHAR")
                        .HasColumnName("telefone");

                    b.HasKey("Id");

                    b.ToTable("aluno", (string)null);
                });
#pragma warning restore 612, 618
        }
    }
}
