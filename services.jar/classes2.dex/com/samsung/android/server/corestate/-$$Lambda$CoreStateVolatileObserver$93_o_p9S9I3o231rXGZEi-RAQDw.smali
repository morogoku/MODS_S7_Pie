.class public final synthetic Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$93_o_p9S9I3o231rXGZEi-RAQDw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$93_o_p9S9I3o231rXGZEi-RAQDw;->f$0:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    iput p2, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$93_o_p9S9I3o231rXGZEi-RAQDw;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$93_o_p9S9I3o231rXGZEi-RAQDw;->f$0:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    iget v1, p0, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$93_o_p9S9I3o231rXGZEi-RAQDw;->f$1:I

    invoke-static {v0, v1}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->lambda$setState$0(Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;I)V

    return-void
.end method
