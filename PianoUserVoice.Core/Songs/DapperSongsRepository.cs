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
        public override void Create(SongDto entity)
        {
            using(IDbConnection db = new SqlConnection(ConnectionString))
            {
                db.Open();
                db.Execute(@"insert [dbo].[Songs] ([Title], [Description], [UserId], [StatusId]) 
                                values (@t, @d, @u, @s)",
                        new {
                            t = entity.Title,
                            d = entity.Description,
                            u = entity.AuthorId,
                            s = 1 // TODO: Alex, please, remove this shit 
                        }
                    );
            }
        }

        public IEnumerable<SongDto> Search(string title)
        {
            throw new NotImplementedException();
        }

        public void Vote(int songId, string userId)
        {
            using (IDbConnection db = new SqlConnection(ConnectionString))
            {
                bool hasVoted = db.ExecuteScalar<int>(@"select count(1) from [dbo].[SongVotes] 
                    where SongId = @sid and UserId = @uid",
                     new { sid = songId, uid = userId }
                     ) > 0;
                if (hasVoted)
                    throw new InvalidOperationException("User has already voted for this song");
                db.Execute("insert [dbo].[SongVotes] values (@sid, @uid)",
                    new { sid = songId, uid = userId });
            }
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
