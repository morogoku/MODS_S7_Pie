.class public Landroid/support/v4/media/DataSourceDesc$Builder;
.super Ljava/lang/Object;
.source "DataSourceDesc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/DataSourceDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEndPositionMs:J

.field private mFDLength:J

.field private mFDOffset:J

.field private mStartPositionMs:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDOffset:J

    const-wide v2, 0x7ffffffffffffffL

    iput-wide v2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mFDLength:J

    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mStartPositionMs:J

    iput-wide v2, p0, Landroid/support/v4/media/DataSourceDesc$Builder;->mEndPositionMs:J

    return-void
.end method
