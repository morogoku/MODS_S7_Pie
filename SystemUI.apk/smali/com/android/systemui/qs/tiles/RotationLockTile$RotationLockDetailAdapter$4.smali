.class Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$4;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

.field final synthetic val$homeSwitch:Lcom/android/systemui/qs/QSSwitch;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Lcom/android/systemui/qs/QSSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$4;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$4;->val$homeSwitch:Lcom/android/systemui/qs/QSSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$4;->val$homeSwitch:Lcom/android/systemui/qs/QSSwitch;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$4;->val$homeSwitch:Lcom/android/systemui/qs/QSSwitch;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSSwitch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSwitch;->setChecked(Z)V

    return-void
.end method
