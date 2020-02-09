.class public final synthetic Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$8gn4facRxOKAw7xkto5I7joRZqs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/virtualspace/VSSession;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$8gn4facRxOKAw7xkto5I7joRZqs;->f$0:Lcom/samsung/android/server/virtualspace/VSSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSSession$8gn4facRxOKAw7xkto5I7joRZqs;->f$0:Lcom/samsung/android/server/virtualspace/VSSession;

    invoke-static {v0}, Lcom/samsung/android/server/virtualspace/VSSession;->lambda$close$2(Lcom/samsung/android/server/virtualspace/VSSession;)V

    return-void
.end method
