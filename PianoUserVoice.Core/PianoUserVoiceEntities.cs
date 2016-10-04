using StackExchange.Profiling;
using StackExchange.Profiling.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.Entity;
using System.Data.Entity.Core.EntityClient;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PianoUserVoice.Core
{
    public class PianoUserVoiceEntities : DbContext
    {
        public PianoUserVoiceEntities()
            : base("name=DefaultConnection")
        {
        }

        public PianoUserVoiceEntities(DbConnection existingConnection, bool contextOwnsConnection)
            : base(existingConnection, contextOwnsConnection)
        {
        }

    }
}
