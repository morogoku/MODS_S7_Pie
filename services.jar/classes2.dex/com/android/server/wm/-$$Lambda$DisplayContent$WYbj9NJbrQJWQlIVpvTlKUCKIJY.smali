.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$WYbj9NJbrQJWQlIVpvTlKUCKIJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/WindowState;

.field private final synthetic f$1:Lcom/android/server/wm/WindowState;

.field private final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$WYbj9NJbrQJWQlIVpvTlKUCKIJY;->f$0:Lcom/android/server/wm/WindowState;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$WYbj9NJbrQJWQlIVpvTlKUCKIJY;->f$1:Lcom/android/server/wm/WindowState;

    iput-object p3, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$WYbj9NJbrQJWQlIVpvTlKUCKIJY;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$WYbj9NJbrQJWQlIVpvTlKUCKIJY;->f$0:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$WYbj9NJbrQJWQlIVpvTlKUCKIJY;->f$1:Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$WYbj9NJbrQJWQlIVpvTlKUCKIJY;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->lambda$getVisibleWindowInfo$27(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
