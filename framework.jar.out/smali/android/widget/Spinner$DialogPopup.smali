.class Landroid/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method private constructor <init>(Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Spinner;Landroid/widget/Spinner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Spinner;
    .param p2, "x1"    # Landroid/widget/Spinner$1;

    .prologue
    .line 951
    invoke-direct {p0, p1}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 958
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 959
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 1035
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1002
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    iget-object v0, v0, Landroid/widget/Spinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1005
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner$DialogPopup;->dismiss()V

    .line 1006
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 966
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 967
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1010
    const-string v0, "Spinner"

    const-string v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .prologue
    .line 1020
    const-string v0, "Spinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 970
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 971
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .prologue
    .line 1015
    const-string v0, "Spinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return-void
.end method

.method public show(II)V
    .locals 4
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    .line 978
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    .line 998
    :goto_0
    return-void

    .line 984
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 989
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 990
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 992
    :cond_1
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 994
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 995
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 996
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 997
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method