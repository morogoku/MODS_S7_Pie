.class Lcom/android/server/display/MagnifierDisplayPolicy$1;
.super Landroid/database/ContentObserver;
.source "MagnifierPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierDisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierDisplayPolicy;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    const-string/jumbo v0, "navigation_bar_gesture_while_hidden"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    # getter for: Lcom/android/server/display/MagnifierDisplayPolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->access$400(Lcom/android/server/display/MagnifierDisplayPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigation_bar_gesture_while_hidden"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_25

    const/4 v3, 0x1

    nop

    :cond_25
    # setter for: Lcom/android/server/display/MagnifierDisplayPolicy;->mNavigationBarGestureWhileHidden:Z
    invoke-static {v0, v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->access$302(Lcom/android/server/display/MagnifierDisplayPolicy;Z)Z

    :cond_28
    return-void
.end method
