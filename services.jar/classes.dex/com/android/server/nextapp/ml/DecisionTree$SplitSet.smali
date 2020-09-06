.class Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;
.super Ljava/lang/Object;
.source "DecisionTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/ml/DecisionTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplitSet"
.end annotation


# instance fields
.field instanceSets:[[I

.field splitAttr:I

.field splitPoints:[D

.field final synthetic this$0:Lcom/android/server/nextapp/ml/DecisionTree;


# direct methods
.method constructor <init>(Lcom/android/server/nextapp/ml/DecisionTree;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/nextapp/ml/DecisionTree$SplitSet;->this$0:Lcom/android/server/nextapp/ml/DecisionTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
