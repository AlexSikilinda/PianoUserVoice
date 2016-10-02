using PianoUserVoice.Core.Songs.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PianoUserVoice.Core.Songs
{
    public interface ISongsRepository<T> : IRepository<T>
        where T : class
    {
        void Vote(int songId, string userId);

        IEnumerable<T> Search(string title);

        IEnumerable<T> GetAll(string userId);

        DetailDto Details(int songId, string userId);
    }
}
