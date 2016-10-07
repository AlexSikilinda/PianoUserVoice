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
            using (IDbConnection conn = CreateProfiledConnection())
            using (IDbCommand dbCommand = conn.CreateCommand())
            {
                dbCommand.CommandText = "exec [dbo].[SongsList] @UserId";
                dbCommand.Parameters.Add(new SqlParameter("@UserId", userId));
                conn.Open();
                using (var reader = dbCommand.ExecuteReader())
                {
                    List<SongDto> songs = new List<SongDto>();
                    while (reader.Read())
                    {
                        var dto = BuildSongDto(reader);
                        songs.Add(dto);
                    }
                    return songs;
                }
            }
        }

        private static SongDto BuildSongDto(IDataReader reader)
        {
            SongDto song = new SongDto();
            song.Id = reader.GetInt32(0);
            song.Title = reader.GetString(1);
            song.Description = reader.GetString(2);
            song.Author = reader.GetString(3);
            song.CreatedAt = reader.GetDateTime(4);
            song.Votes = reader.GetInt32(5);
            song.Status = reader.GetString(6);
            song.CommentsCount = reader.GetInt32(7);
            song.CanVote = reader.GetBoolean(8);
            return song;
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
