.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$_dZRryJQYdwokr9IRKPu2KCZZu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field private final synthetic f$1:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/policy/WindowManagerPolicy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$_dZRryJQYdwokr9IRKPu2KCZZu4;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$_dZRryJQYdwokr9IRKPu2KCZZu4;->f$1:Lcom/android/server/policy/WindowManagerPolicy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$_dZRryJQYdwokr9IRKPu2KCZZu4;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$_dZRryJQYdwokr9IRKPu2KCZZu4;->f$1:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$waitForAllWindowsDrawn$25(Lcom/android/server/wm/DisplayContent;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
