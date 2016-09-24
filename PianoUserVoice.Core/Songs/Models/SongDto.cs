using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PianoUserVoice.Core.Songs.Models
{
    public class SongDto
    {
        public int Id { get; set; }

        public string Title { get; set; }

        public string Description { get; set; }

        public int Votes { get; set; }

        public string Author { get; set; }

        public string Status { get; set; }

        public int CommentsCount { get; set; }

        public DateTime CreatedAt { get; set; }
    }
}
