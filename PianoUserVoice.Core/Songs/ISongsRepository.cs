using PianoUserVoice.Core.Songs.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PianoUserVoice.Core.Songs
{
    public interface ISongsRepository : IRepository<SongDto>
    {
        void Vote(int songId, string userId);

        IEnumerable<SongDto> Search(string title);
    }
}
