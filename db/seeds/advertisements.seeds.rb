puts 'Create Advertisements...'


Advertisement.create(
    title:              'sample title1',
    description:        'sample description1',
    channel:            'mobile',
    view_template:      'post',
    expose_view:        'newsfeed',
    expose_position:    2,
    audience_roles:     'student,parent',
    audience_grade_from: 7,
    audience_grade_to:   12,
    action_type:        'link',
    action_url:         'http://www.daum.net'
    )

Advertisement.create(
    title:              'sample title2',
    description:        'sample description2',
    channel:            'mobile',
    view_template:      'post',
    expose_view:        'newsfeed',
    expose_position:    7,
    audience_roles:     'student,parent',
    audience_grade_from: 7,
    audience_grade_to:   12,
    action_type:        'link',
    action_url:         'http://www.daum.net'
    )

Advertisement.create(
    title:              'sample title3',
    description:        'sample description3',
    channel:            'mobile',
    view_template:      'post',
    expose_view:        'noticeboard',
    expose_position:    1,
    audience_roles:     'student,parent',
    audience_grade_from: 7,
    audience_grade_to:   12,
    action_type:        'link',
    action_url:         'http://www.daum.net'
    )

Advertisement.create(
    title:              'sample title1',
    description:        'sample description1',
    channel:            'web',
    view_template:      'post',
    expose_view:        'newsfeed',
    expose_position:    2,
    audience_roles:     'student,parent',
    audience_grade_from: 7,
    audience_grade_to:   12,
    action_type:        'link',
    action_url:         'http://www.daum.net'
    )

Advertisement.create(
    title:              'sample title2',
    description:        'sample description2',
    channel:            'web',
    view_template:      'post',
    expose_view:        'newsfeed',
    expose_position:    7,
    audience_roles:     'student,parent',
    audience_grade_from: 7,
    audience_grade_to:   12,
    action_type:        'link',
    action_url:         'http://www.daum.net'
    )

Advertisement.create(
    title:              'sample title3',
    description:        'sample description3',
    channel:            'web',
    view_template:      'post',
    expose_view:        'noticeboard',
    expose_position:    1,
    audience_roles:     'student,parent',
    audience_grade_from: 7,
    audience_grade_to:   12,
    action_type:        'link',
    action_url:         'http://www.daum.net'
    )
