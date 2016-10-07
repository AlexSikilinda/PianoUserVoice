using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PianoUserVoice.Core.Songs.Models;
using System.Data;
using System.Data.SqlClient;
using StackExchange.Profiling.Data;
using System.Data.Common;

namespace PianoUserVoice.Core.Songs
{
    public class AdoNetSongsRepository : Repository<SongDto>,
        ISongsRepository<SongDto>
    {
        public IEnumerable<SongDto> Search(string title)
        {
            throw new NotImplementedException();
        }

        public void Vote(int songId, string userId)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<SongDto> GetAll(string userId)
        {
            throw new NotImplementedException();
        }

        public DetailDto Details(int songId, string userId)
        {
            throw new NotImplementedException();
        }

        public void AddComment(string text, int songId, string userId)
        {
            throw new NotImplementedException();
        }
    }
}
