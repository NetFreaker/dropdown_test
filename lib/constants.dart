const String jsonData = '''{
    "code": 100,
    "success": true,
    "message": "Course details found",
    "data": {
        "course_id": 400,
        "user_id": 272,
        "title": "program",
        "description": "tell us more",
        "status": 1,
        "genre": "Cardio",
        "created_at": "2021-05-22 03:21:52",
        "updated_at": "2021-05-22 03:33:05",
        "image": "http://api.gymfit.unravelstudios.co/course/image?id=400&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=1621661326",
        "cover_url": "http://api.gymfit.unravelstudios.co/course/image?id=400&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=1621661326",
        "sessionCount": "4",
        "sessions": {
            "Beginners": [
                {
                    "session_id": 486,
                    "course_id": 400,
                    "category_type": 1,
                    "title": "course session test 12  title",
                    "description": "course session test 12 description",
                    "status": 1,
                    "image": "http://api.gymfit.unravelstudios.co/session/image?id=486&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621655895.png",
                    "video": null,
                    "link": null,
                    "video_image": null,
                    "link_image": null,
                    "url": "http://api.gymfit.unravelstudios.co/session/image?id=486&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621655895.png",
                    "video_link": null,
                    "cover_url": "http://api.gymfit.unravelstudios.co/session/image?id=486&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621655895.png",
                    "is_youtube_link": false,
                    "media_type": 0,
                    "filename": "cc3183f81621655895.png",
                    "created_at": "2021-05-22 03:58:15",
                    "updated_at": "2021-05-22 03:58:15",
                    "course": {
                        "title": "program",
                        "description": "tell us more",
                        "featured_image": "http://api.gymfit.unravelstudios.co/course/image?id=400&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=1621661326",
                        "genre": "Cardio"
                    }
                }
            ],
            "Intermediate": [
                {
                    "session_id": 487,
                    "course_id": 400,
                    "category_type": 2,
                    "title": "course session test 1",
                    "description": "course session test 22",
                    "status": 1,
                    "image": "http://api.gymfit.unravelstudios.co/session/image?id=487&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621656011.png",
                    "video": null,
                    "link": null,
                    "video_image": null,
                    "link_image": null,
                    "url": "http://api.gymfit.unravelstudios.co/session/image?id=487&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621656011.png",
                    "video_link": null,
                    "cover_url": "http://api.gymfit.unravelstudios.co/session/image?id=487&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621656011.png",
                    "is_youtube_link": false,
                    "media_type": 0,
                    "filename": "cc3183f81621656011.png",
                    "created_at": "2021-05-22 04:00:11",
                    "updated_at": "2021-05-22 04:00:11",
                    "course": {
                        "title": "program",
                        "description": "tell us more",
                        "featured_image": "http://api.gymfit.unravelstudios.co/course/image?id=400&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=1621661326",
                        "genre": "Cardio"
                    }
                }
            ],
            "Advanced": [
                {
                    "session_id": 488,
                    "course_id": 400,
                    "category_type": 3,
                    "title": "course session test 1",
                    "description": "course session test 3",
                    "status": 1,
                    "image": "http://api.gymfit.unravelstudios.co/session/image?id=488&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621656049.png",
                    "video": null,
                    "link": null,
                    "video_image": null,
                    "link_image": null,
                    "url": "http://api.gymfit.unravelstudios.co/session/image?id=488&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621656049.png",
                    "video_link": null,
                    "cover_url": "http://api.gymfit.unravelstudios.co/session/image?id=488&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621656049.png",
                    "is_youtube_link": false,
                    "media_type": 0,
                    "filename": "cc3183f81621656049.png",
                    "created_at": "2021-05-22 04:00:49",
                    "updated_at": "2021-05-22 04:00:49",
                    "course": {
                        "title": "program",
                        "description": "tell us more",
                        "featured_image": "http://api.gymfit.unravelstudios.co/course/image?id=400&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=1621661326",
                        "genre": "Cardio"
                    }
                },
                {
                    "session_id": 489,
                    "course_id": 400,
                    "category_type": 3,
                    "title": "course session test 1",
                    "description": "course session adv 3",
                    "status": 1,
                    "image": "http://api.gymfit.unravelstudios.co/session/image?id=489&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621661317.png",
                    "video": null,
                    "link": null,
                    "video_image": null,
                    "link_image": null,
                    "url": "http://api.gymfit.unravelstudios.co/session/image?id=489&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621661317.png",
                    "video_link": null,
                    "cover_url": "http://api.gymfit.unravelstudios.co/session/image?id=489&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=cc3183f81621661317.png",
                    "is_youtube_link": false,
                    "media_type": 0,
                    "filename": "cc3183f81621661317.png",
                    "created_at": "2021-05-22 05:28:37",
                    "updated_at": "2021-05-22 05:28:37",
                    "course": {
                        "title": "program",
                        "description": "tell us more",
                        "featured_image": "http://api.gymfit.unravelstudios.co/course/image?id=400&access-token=zQkWYB7tQvOax3M4Z0qwEb9UYiixEoNY&t=1621661326",
                        "genre": "Cardio"
                    }
                }
            ]
        },
        "session_levels": [
            {
                "id": 1,
                "desc": "Beginners",
                "count": 1
            },
            {
                "id": 2,
                "desc": "Intermediate",
                "count": 1
            },
            {
                "id": 3,
                "desc": "Advance",
                "count": 2
            }
        ]
    }
}''';
