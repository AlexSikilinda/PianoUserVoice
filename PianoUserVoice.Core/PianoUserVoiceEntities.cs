using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
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
    }
}
