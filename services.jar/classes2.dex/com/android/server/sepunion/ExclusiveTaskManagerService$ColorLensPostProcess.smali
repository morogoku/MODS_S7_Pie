.class public Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorLensPostProcess;
.super Ljava/lang/Object;
.source "ExclusiveTaskManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/ExclusiveTaskManagerService$PostProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/ExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorLensPostProcess"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorLensPostProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doPostProcess(Landroid/content/Context;I)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/sepunion/ExclusiveTaskManagerService$ColorLensPostProcess;->this$0:Lcom/android/server/sepunion/ExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/ExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/ExclusiveTaskManagerService;->access$2200(Lcom/android/server/sepunion/ExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_26

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_lens_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_lens_opacity"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->semEnableMdnieColorFilter(II)Z

    goto :goto_29

    :cond_26
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->semDisableMdnieColorFilter()Z

    :goto_29
    return v1
.end method
