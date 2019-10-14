.class public final synthetic Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$lnN2tfCxUI5sqdHnI3_oF8NlleA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

.field private final synthetic f$1:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;Landroid/view/Surface;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$lnN2tfCxUI5sqdHnI3_oF8NlleA;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iput-object p2, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$lnN2tfCxUI5sqdHnI3_oF8NlleA;->f$1:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$lnN2tfCxUI5sqdHnI3_oF8NlleA;->f$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    iget-object v1, p0, Lcom/samsung/android/server/virtualspace/-$$Lambda$VSScreen$lnN2tfCxUI5sqdHnI3_oF8NlleA;->f$1:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->lambda$setSurface$10(Lcom/samsung/android/server/virtualspace/VSScreen;Landroid/view/Surface;)V

    return-void
.end method
