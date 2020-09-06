.class public final synthetic Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$ngw0Bc5BAK_hjningEq5-y5nleo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

.field private final synthetic f$1:Lcom/samsung/android/virtualspace/IVSScreenCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;Lcom/samsung/android/virtualspace/IVSScreenCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$ngw0Bc5BAK_hjningEq5-y5nleo;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$ngw0Bc5BAK_hjningEq5-y5nleo;->f$1:Lcom/samsung/android/virtualspace/IVSScreenCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$ngw0Bc5BAK_hjningEq5-y5nleo;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$ngw0Bc5BAK_hjningEq5-y5nleo;->f$1:Lcom/samsung/android/virtualspace/IVSScreenCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->lambda$registerCallback$1(Lcom/samsung/android/server/virtualspace/VSScreen;Lcom/samsung/android/virtualspace/IVSScreenCallback;)V

    return-void
.end method
