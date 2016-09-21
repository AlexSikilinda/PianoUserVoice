using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PianoUserVoice.Core.Songs.Models;
using System.Data;
using System.Data.SqlClient;
using Dapper;

namespace PianoUserVoice.Core.Songs
{
    public class DapperSongsRepository : Repository<SongDto>, 
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

        public IEnumerable<SongDto> GetAll()
        {
            using (IDbConnection db = new SqlConnection(ConnectionString))
            {
                db.Open();
                return db.Query<SongDto>("select * from [dbo].[SongsList]");
            }
        }
    }
}
