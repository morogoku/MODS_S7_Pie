.class Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;
.super Ljava/lang/Object;
.source "DecisionTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/ml/DecisionTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubFeatureCounter"
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/android/server/nextapp/ml/DecisionTree;

.field valueID:I


# direct methods
.method constructor <init>(Lcom/android/server/nextapp/ml/DecisionTree;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/nextapp/ml/DecisionTree$SubFeatureCounter;->this$0:Lcom/android/server/nextapp/ml/DecisionTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
