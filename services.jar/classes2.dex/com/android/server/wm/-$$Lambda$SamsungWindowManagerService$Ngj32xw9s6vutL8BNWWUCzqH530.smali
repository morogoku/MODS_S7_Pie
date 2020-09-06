.class public final synthetic Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Ngj32xw9s6vutL8BNWWUCzqH530;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/SamsungWindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Ngj32xw9s6vutL8BNWWUCzqH530;->f$0:Lcom/android/server/wm/SamsungWindowManagerService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$SamsungWindowManagerService$Ngj32xw9s6vutL8BNWWUCzqH530;->f$0:Lcom/android/server/wm/SamsungWindowManagerService;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->lambda$getLetterboxDirection$10(Lcom/android/server/wm/SamsungWindowManagerService;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
