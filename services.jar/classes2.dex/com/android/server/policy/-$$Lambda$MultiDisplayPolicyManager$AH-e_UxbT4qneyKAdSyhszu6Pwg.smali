.class public final synthetic Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/graphics/Rect;

.field private final synthetic f$5:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/MultiDisplayPolicyManager;IIILandroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    iput p2, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$1:I

    iput p3, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$2:I

    iput p4, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$3:I

    iput-object p5, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$4:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$5:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-boolean p7, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$0:Lcom/android/server/policy/MultiDisplayPolicyManager;

    iget v1, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$1:I

    iget v2, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$2:I

    iget v3, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$3:I

    iget-object v4, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$4:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$5:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-boolean v6, p0, Lcom/android/server/policy/-$$Lambda$MultiDisplayPolicyManager$AH-e_UxbT4qneyKAdSyhszu6Pwg;->f$6:Z

    invoke-static/range {v0 .. v6}, Lcom/android/server/policy/MultiDisplayPolicyManager;->lambda$updateSystemUiVisibility$1(Lcom/android/server/policy/MultiDisplayPolicyManager;IIILandroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V

    return-void
.end method
