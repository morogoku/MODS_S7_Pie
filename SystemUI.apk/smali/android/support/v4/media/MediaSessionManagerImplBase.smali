.class Landroid/support/v4/media/MediaSessionManagerImplBase;
.super Ljava/lang/Object;
.source "MediaSessionManagerImplBase.java"

# interfaces
.implements Landroid/support/v4/media/MediaSessionManager$MediaSessionManagerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaSessionManagerImplBase$RemoteUserInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/support/v4/media/MediaSessionManager;->DEBUG:Z

    sput-boolean v0, Landroid/support/v4/media/MediaSessionManagerImplBase;->DEBUG:Z

    return-void
.end method
