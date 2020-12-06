.class public interface abstract Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;
.super Ljava/lang/Object;
.source "SemAutoEnhanceCMHProviderInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$TagFlags;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ChannelType;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IMomentColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IStoryTagColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ISummaryColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IEventContactColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IStoriesColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IDayAndMonthColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IMonthClusterColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IDayClusterColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IClusterColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ICategoryColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$VideoColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ImageColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ITagColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IKeyFaceColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IPersonsColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IFaceColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IUserTagsColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IWeatherColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IPOIColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ICalendarEventColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ILocationColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ISceneColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$IFilesColumns;,
        Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$ICommonColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final BEST_PHOTO_URI:Landroid/net/Uri;

.field public static final CALENDAR_EVENT_TABLE_URI:Landroid/net/Uri;

.field public static final CATEGORY_TABLE_URI:Landroid/net/Uri;

.field public static final CLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final DAYCLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final DAY_MONTH_TABLE_URI:Landroid/net/Uri;

.field public static final DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

.field public static final DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

.field public static final FACES_TABLE_URI:Landroid/net/Uri;

.field public static final FILES_TABLE_URI:Landroid/net/Uri;

.field public static final IMAGES_TABLE_URI:Landroid/net/Uri;

.field public static final KEY_FACES_TABLE_URI:Landroid/net/Uri;

.field public static final LOCATION_TABLE_URI:Landroid/net/Uri;

.field public static final MOMENT_TABLE_URI:Landroid/net/Uri;

.field public static final MONTHCLUSTER_TABLE_URI:Landroid/net/Uri;

.field public static final PERSONS_TABLE_URI:Landroid/net/Uri;

.field public static final POI_TABLE_URI:Landroid/net/Uri;

.field public static final SCENE_TABLE_URI:Landroid/net/Uri;

.field public static final SHOT_TABLE_URI:Landroid/net/Uri;

.field public static final SMARTCROP_VIEW_URI:Landroid/net/Uri;

.field public static final STORY_TABLE_URI:Landroid/net/Uri;

.field public static final STORY_TAG_VIEW_TABLE_URI:Landroid/net/Uri;

.field public static final SUMMARY_TABLE_URI:Landroid/net/Uri;

.field public static final TABLEONE_VIEW_URI:Landroid/net/Uri;

.field public static final TAG_VIEW_URI:Landroid/net/Uri;

.field public static final TIMELINE_VIEW_URI:Landroid/net/Uri;

.field public static final USERTAG_TABLE_URI:Landroid/net/Uri;

.field public static final VIDEOS_TABLE_URI:Landroid/net/Uri;

.field public static final WEATHER_TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.samsung.cmh"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "files"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "usertag"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->USERTAG_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "calendarevent"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->CALENDAR_EVENT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "scene"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SCENE_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "location"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->LOCATION_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "shotmode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SHOT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "weather"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->WEATHER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "poi"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->POI_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "category"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->CATEGORY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "detailed_imagesview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "detailed_videosview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DETAILED_VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "external/faces"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->FACES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "internal/persons"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->PERSONS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "moment"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->MOMENT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "story"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->STORY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "summary"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SUMMARY_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "monthcluster"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->MONTHCLUSTER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "event_contact"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->EVENT_CONTACT_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "story_tag_view"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->STORY_TAG_VIEW_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "cluster"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->CLUSTER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "dayMonth"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DAY_MONTH_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "daycluster"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->DAYCLUSTER_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "timelineview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->TIMELINE_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "tagview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->TAG_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "internal/key_faces"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->KEY_FACES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "images"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "video"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "smartcropview"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->SMARTCROP_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "table1"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->TABLEONE_VIEW_URI:Landroid/net/Uri;

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bestphoto"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;->BEST_PHOTO_URI:Landroid/net/Uri;

    return-void
.end method
