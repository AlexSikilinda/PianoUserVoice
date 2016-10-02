﻿using System;

namespace PianoUserVoice.Core.Songs.Models
{
    public class CommentDto
    {
        public int Id { get; set; }

        public string Text { get; set; }

        public DateTime CreatedAt { get; set; }

        public string UserName { get; set; }
    }
}