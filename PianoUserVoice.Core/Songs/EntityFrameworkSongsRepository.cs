﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PianoUserVoice.Core.Songs.Models;

namespace PianoUserVoice.Core.Songs
{
    public class EntityFrameworkSongsRepository : ISongsRepository<SongDto>
    {
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

        public IEnumerable<SongDto> GetAll()
        {
            throw new NotImplementedException();
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