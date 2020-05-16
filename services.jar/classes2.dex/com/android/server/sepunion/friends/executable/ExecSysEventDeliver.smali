.class public Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;
.super Ljava/lang/Object;
.source "ExecSysEventDeliver.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field public static final EVENT_BOOT_COMPLETED:I = 0x3e8

.field public static final EVENT_CLEANUP_USER:I = 0x3ed

.field public static final EVENT_START_USER:I = 0x3e9

.field public static final EVENT_STOP_USER:I = 0x3ec

.field public static final EVENT_SWITCH_USER:I = 0x3eb

.field public static final EVENT_UNLOCK_USER:I = 0x3ea


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createBundle(II)Landroid/os/Bundle;
    .registers 4

    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    const-string/jumbo v1, "paramInt0"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    const-string/jumbo v1, "paramInt1"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 8

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    move-result-object v0

    if-eqz v0, :cond_2a

    :try_start_11
    invoke-virtual {v0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->sysEvent(Landroid/os/Bundle;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_17
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_2a

    :catchall_15
    move-exception v2

    goto :goto_19

    :catch_17
    move-exception v1

    :try_start_18
    throw v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_15

    :goto_19
    if-eqz v0, :cond_29

    if-eqz v1, :cond_26

    :try_start_1d
    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_29

    :cond_26
    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    :cond_29
    :goto_29
    throw v2

    :cond_2a
    :goto_2a
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    :cond_2f
    return-object v1
.end method

.method public executeOnSameThread(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
