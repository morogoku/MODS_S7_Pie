.class Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter$1;
.super Ljava/lang/Object;
.source "GrxRecoveryTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;

    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->mRequireConfirmation:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$GrxRecoveryDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->access$100(Lcom/android/systemui/qs/tiles/GrxRecoveryTile;)V

    return-void
.end method
