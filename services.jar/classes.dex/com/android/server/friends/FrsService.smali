.class public Lcom/android/server/friends/FrsService;
.super Lcom/android/server/SystemService;
.source "FrsService.java"


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "mate_service"


# instance fields
.field private final mImpl:Lcom/samsung/android/friends/FrsServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/friends/FrsServiceImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/friends/FrsServiceImpl;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    const-string/jumbo v0, "mate_service"

    iget-object v1, p0, Lcom/android/server/friends/FrsService;->mImpl:Lcom/samsung/android/friends/FrsServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/friends/FrsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
