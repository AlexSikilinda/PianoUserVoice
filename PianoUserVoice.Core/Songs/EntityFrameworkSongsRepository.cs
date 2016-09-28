using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PianoUserVoice.Core.Songs.Models;

namespace PianoUserVoice.Core.Songs
{
    public class EntityFrameworkSongsRepository : ISongsRepository<SongDto>
    {
        private readonly PianoUserVoiceEntities _db = new PianoUserVoiceEntities();
        #region CRUD
        public void Create(SongDto entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(SongDto entity)
        {
            throw new NotImplementedException();
        }

        public void Update(SongDto entity)
        {
            throw new NotImplementedException();
        }



        public SongDto GetById(int id)
        {
            throw new NotImplementedException();
        }
#endregion

        public IEnumerable<SongDto> GetAll(string userId)
        {
            return
                _db.Songs
                .Select(x => new SongDto
                {
                    Title = x.Title,
                    Description = x.Description,
                    Status = x.SongStatus.Title,
                    Votes = 5, // TODO: Alex, please, remove this shit (2)
                })
                .OrderByDescending(x => x.Votes)
                .AsEnumerable();
        }


        public IEnumerable<SongDto> Search(string title)
        {
            throw new NotImplementedException();
        }


        public void Vote(int songId, string userId)
        {
            throw new NotImplementedException();
        }
    }
}
