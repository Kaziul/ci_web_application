<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
class Article_model extends CI_Model{
    public function getArticle($id)
    {
      $this->db->select('articles.*, categories.name as category_name');
      $this->db->join('categories', 'categories.id=articles.category','left');
      $article = $this->db->where('articles.id', $id)->get('articles')->row_array();
      return $article;
    }
    public function getArticles($param = array())
    {
      if(isset($param['offset']) && isset($param['limit'])){
        $this->db->limit($param['offset'], $param['limit']);
      }
      if(isset($param['q'])){
        $this->db->or_like('title',trim($param['q']));
        $this->db->or_like('author',trim($param['q']));
      }
      $articles = $this->db->get('articles')->result_array();
        return $articles;
    }
    // pagination
    public function getArticlesCount($param = array())
    {
    if (isset($param['q'])) {
      $this->db->or_like('title', trim($param['q']));
      $this->db->or_like('author', trim($param['q']));
    }

    if(isset($param['category_id'])){
      $this->db->where('category', $param['category_id']);
    }
      $count = $this->db->count_all_results('articles');
      return $count;

    }
    // This method will save a article in DB
    public function addArticle($formArray)
    {
      $this->db->insert('articles',$formArray);
      return $this->db->insert_id();
    }
   
    public function updateArticle($id ,$formArray)
    {
      $this->db->where('id',$id);
      $this->db->update('articles', $formArray);
    }

  public function deleteArticle($id)
  {
    $this->db->where('id', $id);
    $this->db->delete('articles');

  }




  /*Front Methods */
  public function getArticlesFront($param = array())
  {
    if (isset($param['offset']) && isset($param['limit'])) {
      $this->db->limit($param['offset'], $param['limit']);
    }
    if (isset($param['q'])) {
      $this->db->or_like('title', trim($param['q']));
      $this->db->or_like('author', trim($param['q']));
    }
    if (isset($param['category_id'])) {
      $this->db->where('category', $param['category_id']);
    }
    $this->db->select('articles.*,categories.name as category_name');
    $this->db->where('articles.status',1); // status jodi active theke tahole article show hobe
    $this->db->order_by('articles.created_at','DESC');
    $this->db->join('categories', 'categories.id = articles.category','left');
    $articles = $this->db->get('articles')->result_array();
    return $articles;
  }
}

?>