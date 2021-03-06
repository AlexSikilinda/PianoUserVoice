﻿using StackExchange.Profiling;
using StackExchange.Profiling.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PianoUserVoice.Core
{
    public abstract class Repository<T> : IRepository<T>
        where T : class
    {
        public string ConnectionString => ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        protected ProfiledDbConnection CreateProfiledConnection()
        {
            return new ProfiledDbConnection(new SqlConnection(ConnectionString), MiniProfiler.Current);
        }

        public virtual void Create(T entity)
        {
            throw new NotImplementedException();
        }

        public virtual void Delete(T entity)
        {
            throw new NotImplementedException();
        }

        public virtual T GetById(int id)
        {
            throw new NotImplementedException();
        }

        public virtual void Update(T entity)
        {
            throw new NotImplementedException();
        }
    }
}
