class AdvertisementSerializer < ActiveModel::Serializer
  attributes :id,
    :title,
    :description,
    :channel,
    :view_template,
    :expose_view,
    :expose_position,
    :audience_country,
    :audience_language,
    :audience_roles,
    :audience_grade_from,
    :audience_grade_to,
    :forced_stop,
    :action_type,
    :action_url,
    :start_date,
    :end_date,
    :image,
    :advertiser,
    :campaign,
    :created_at,
    :updated_at

    def start_date
      "2016-09-06"
    end

    def end_date
      "2016-09-36"
    end
  
    def audience_roles
      object.audience_roles.split(',')
    end

    def image
      if object.expose_view == "noticeboard"
      {
        id: 2,
        original_url: 'http://adimg.daumcdn.net/www4/180509/1904368/coupangman_655x120_0908.jpg',
        width: 655,
        height: 120,
        content_type: "image/jpeg",
        created_at: "2016-09-05T23:25:26.000+09:00",
        updated_at: "2016-09-05T23:25:26.000+09:00"
      }
      else 
      {
        id: 1,
        original_url: "http://nv2.tveta.naver.net/libs/1140/1140009/20160826182418-LGPg2ASX.jpg",
        width: 300,
        height: 150,
        content_type: "image/jpeg",
        created_at: "2016-09-05T23:25:26.000+09:00",
        updated_at: "2016-09-05T23:25:26.000+09:00"
      }
      end

    end

    def campaign
      {
        id: 2,
        title: "campaign title",
        created_at: "2016-09-05T23:25:03.000+09:00",
        updated_at: "2016-09-05T23:25:03.000+09:00"
      }
    end

    def advertiser
      {
        id: 1,
        name: "name",
        profile_image: {
          url: "https://avatars1.githubusercontent.com/u/210477?v=3&s=460"
        },
        created_at: "2016-09-05T23:25:03.000+09:00",
        updated_at: "2016-09-05T23:25:03.000+09:00"
      }
    end
end
