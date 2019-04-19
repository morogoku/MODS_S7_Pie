.class public final Landroid/support/v4/media/SubtitleData2;
.super Ljava/lang/Object;
.source "SubtitleData2.java"


# instance fields
.field private mData:[B

.field private mDurationUs:J

.field private mStartTimeUs:J

.field private mTrackIndex:I


# direct methods
.method public constructor <init>(Landroid/media/SubtitleData;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getTrackIndex()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/SubtitleData2;->mTrackIndex:I

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/SubtitleData2;->mStartTimeUs:J

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/SubtitleData2;->mDurationUs:J

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/SubtitleData2;->mData:[B

    return-void
.end method
