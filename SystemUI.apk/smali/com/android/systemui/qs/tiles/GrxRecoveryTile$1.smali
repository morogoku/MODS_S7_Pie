.class Lcom/android/systemui/qs/tiles/GrxRecoveryTile$1;
.super Ljava/lang/Object;
.source "GrxRecoveryTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/GrxRecoveryTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$1;->this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GrxRecoveryTile$1;->this$0:Lcom/android/systemui/qs/tiles/GrxRecoveryTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/GrxRecoveryTile;->gotoRecovery()V

    return-void
.end method