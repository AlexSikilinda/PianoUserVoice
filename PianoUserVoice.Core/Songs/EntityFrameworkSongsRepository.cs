using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PianoUserVoice.Core.Songs.Models;
using System.Data.SqlClient;

namespace PianoUserVoice.Core.Songs
{
    public class EntityFrameworkSongsRepository : Repository<SongDto>,
        ISongsRepository<SongDto>
    {
        public IEnumerable<SongDto> GetAll(string userId)
        {
            using (PianoUserVoiceEntities context = new PianoUserVoiceEntities())
            {
                return context.Database.SqlQuery<SongDto>("exec [dbo].[SongsList] @UserId",
                    new SqlParameter("@UserId", userId)
                    ).ToList();
            }
        }


        public IEnumerable<SongDto> Search(string title)
        {
            throw new NotImplementedException();
        }


        public void Vote(int songId, string userId)
        {
            throw new NotImplementedException();
        }

        public DetailDto Details(int songId, string userId)
        {
            throw new NotImplementedException();
        }
    }
}
