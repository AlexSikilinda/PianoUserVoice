using System.Collections.Generic;

namespace PianoUserVoice.Core.Songs.Models
{
    public class DetailDto
    {
        public SongDto SongDto { get; set; }

        public IEnumerable<CommentDto> Comments { get; set; }  
    }
}