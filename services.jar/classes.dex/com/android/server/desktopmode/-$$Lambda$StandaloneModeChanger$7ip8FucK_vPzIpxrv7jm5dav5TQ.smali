.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$7ip8FucK_vPzIpxrv7jm5dav5TQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$7ip8FucK_vPzIpxrv7jm5dav5TQ;->f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$7ip8FucK_vPzIpxrv7jm5dav5TQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$7ip8FucK_vPzIpxrv7jm5dav5TQ;->f$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/-$$Lambda$StandaloneModeChanger$7ip8FucK_vPzIpxrv7jm5dav5TQ;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/StandaloneModeChanger;->lambda$handleStartLoadingScreen$1(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V

    return-void
.end method
