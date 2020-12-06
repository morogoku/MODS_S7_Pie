.class public final Landroid/support/v4/media/DataSourceDesc;
.super Ljava/lang/Object;
.source "DataSourceDesc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/DataSourceDesc$Builder;
    }
.end annotation


# instance fields
.field private mEndPositionMs:J

.field private mFD:Ljava/io/FileDescriptor;

.field private mFDLength:J

.field private mFDOffset:J

.field private mMedia2DataSource:Landroid/support/v4/media/Media2DataSource;

.field private mStartPositionMs:J

.field private mType:I

.field private mUri:Landroid/net/Uri;

.field private mUriContext:Landroid/content/Context;

.field private mUriCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end field

.field private mUriHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/DataSourceDesc;->mType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mFDOffset:J

    const-wide v2, 0x7ffffffffffffffL

    iput-wide v2, p0, Landroid/support/v4/media/DataSourceDesc;->mFDLength:J

    iput-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mStartPositionMs:J

    iput-wide v2, p0, Landroid/support/v4/media/DataSourceDesc;->mEndPositionMs:J

    return-void
.end method


# virtual methods
.method public getEndPosition()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mEndPositionMs:J

    return-wide v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/DataSourceDesc;->mFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getFileDescriptorLength()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mFDLength:J

    return-wide v0
.end method

.method public getFileDescriptorOffset()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mFDOffset:J

    return-wide v0
.end method

.method public getMedia2DataSource()Landroid/support/v4/media/Media2DataSource;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/DataSourceDesc;->mMedia2DataSource:Landroid/support/v4/media/Media2DataSource;

    return-object v0
.end method

.method public getStartPosition()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/media/DataSourceDesc;->mStartPositionMs:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/DataSourceDesc;->mType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/DataSourceDesc;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUriContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/DataSourceDesc;->mUriContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUriCookies()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/DataSourceDesc;->mUriCookies:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/media/DataSourceDesc;->mUriCookies:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUriHeaders()Ljava/util/Map;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/DataSourceDesc;->mUriHeader:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/support/v4/media/DataSourceDesc;->mUriHeader:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
