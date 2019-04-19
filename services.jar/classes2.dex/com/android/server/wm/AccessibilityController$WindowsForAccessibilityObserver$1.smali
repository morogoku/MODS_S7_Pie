.class Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$1;
.super Ljava/lang/Object;
.source "AccessibilityController.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$1;->this$0:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 5

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/16 v1, 0x65

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_18

    :cond_f
    :goto_f
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    if-ne v0, v1, :cond_16

    goto :goto_18

    :cond_16
    const/16 v1, 0x66

    :goto_18
    # setter for: Lcom/android/server/wm/AccessibilityController;->mDisplayType:I
    invoke-static {v1}, Lcom/android/server/wm/AccessibilityController;->access$1602(I)I

    return-void
.end method
