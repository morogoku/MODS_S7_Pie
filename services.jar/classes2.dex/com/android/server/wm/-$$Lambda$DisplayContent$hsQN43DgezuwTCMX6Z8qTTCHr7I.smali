.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$hsQN43DgezuwTCMX6Z8qTTCHr7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$hsQN43DgezuwTCMX6Z8qTTCHr7I;->f$0:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$hsQN43DgezuwTCMX6Z8qTTCHr7I;->f$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->lambda$onWindowFreezeTimeout$24(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
