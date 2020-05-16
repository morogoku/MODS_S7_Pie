.class Landroid/support/v4/media/subtitle/SubtitleTrack$Run;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/subtitle/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Run"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public mEndTimeMs:J

.field public mFirstCue:Landroid/support/v4/media/subtitle/SubtitleTrack$Cue;

.field public mNextRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

.field public mPrevRunAtEndTimeMs:Landroid/support/v4/media/subtitle/SubtitleTrack$Run;

.field public mRunID:J

.field private mStoredEndTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v4/media/subtitle/SubtitleTrack;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mEndTimeMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mRunID:J

    iput-wide v0, p0, Landroid/support/v4/media/subtitle/SubtitleTrack$Run;->mStoredEndTimeMs:J

    return-void
.end method
