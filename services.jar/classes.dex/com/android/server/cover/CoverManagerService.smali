.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/android/server/SystemService;
.source "CoverManagerService.java"


# instance fields
.field private final mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x258

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->systemRunning()V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "cover"

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cover/CoverManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
